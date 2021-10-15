#include <iostream>
#include <string>
#include <algorithm>
#include <fstream>
#include <random>
#include <iomanip>

using namespace std;

//Used to reach the .txt files in different parts of the program
string initializeFiles(int nr) {
    string randomUnsignedShortsFile = R"(C:\CLionProjects\Endians\1originalEndians.txt)"; //1
    string oppositeEndiansFile = R"(C:\CLionProjects\Endians\2oppositeEndians.txt)"; //2
    string unsignedCharFile = R"(C:\CLionProjects\Endians\3middleBytes.txt)"; //3
    if (nr == 1) {
        return randomUnsignedShortsFile;
    }else if (nr == 2) {
        return oppositeEndiansFile;
    } else if (nr == 3) {
        return unsignedCharFile;
    }
}

string bin_str16(unsigned short value) {
    string result;
    int count = 0;
    for(int i = 1; i <= 65535; i*=2) {
        if((value & i) == i ) {
            result = "1" + result;
        } else {
            result = "0" + result;
        }
        if ( ++count % 4 == 0 && count < 16) result = " " + result;
    }
    return result;
}

string bin_str8(unsigned char value) {
    string result;
    int count = 0;
    for(int i = 1; i <= 255; i*=2) {
        if((value & i) == i ) {
            result = "1" + result;
        } else {
            result = "0" + result;
        }
        if ( ++count % 4 == 0 && count < 8) result = " " + result;
    }
    return result;
}
//Used to remove spaces in the binary strings which only were put there for readability.
string removeSpaces(string str) {
    str.erase(std::remove(str.begin(), str.end(), ' '), str.end());
    return str;
}
//Reasoning is in "Förklaring.txt" (1.)
unsigned short changeEndian(unsigned short x) {
    return (x << 8) | (x >> (8));
}
//Reasoning is in "Förklaring.txt" (2.)
unsigned char midEight(int x) {
    unsigned char c = (x >> 4);
    return c;
}

//Genereates random unsigned shorts in a .txt file
void generateRandomNumbers(int lines) {
    default_random_engine engine{static_cast<long unsigned int>(time(nullptr))};
    uniform_real_distribution<double> dist(1, 65535);
    fstream myFile;
    myFile.open(initializeFiles(1), ios::out);
    if(myFile.is_open()) {
        for (int i = 1; i <= lines; i++) {
            myFile << bin_str16(dist(engine)) << endl;
        }
        myFile.close();
    }
}

int main() {
    //Generating random bytes.
    int lines = 20;
    cout << "Running program with " << lines << " generated lines.\n" << endl;
    generateRandomNumbers(lines);

    cout << "---" << endl;
    int lineCount = 0;

    fstream myFile;
    fstream myFile2;
    fstream myFile3;

    myFile.open(initializeFiles(1), ios::in);
    myFile2.open(initializeFiles(2), ios::out);
    myFile3.open(initializeFiles(3), ios::out);
    if(myFile.is_open()) {
        string line;
        while (getline(myFile, line)) {

            //The lineCount makes it easier for debugging
            lineCount++;
            cout << "Line " << dec << lineCount << endl;

            //Printing [original endian] in binary and hex to the console.
            unsigned short originalEndian = stoi(removeSpaces(line), nullptr, 2);
            cout << "Original Endian: " << line + " " << hex << "(" << originalEndian << ")" << endl;

            //Switching endian.
            string otherEndianStr = bin_str16(changeEndian(stoi(removeSpaces(line), nullptr, 2)));

            //Printing [opposite endian] in binary and hex to the console, and writing it to other file (in bin).
            unsigned short otherEndian = stoi(removeSpaces(otherEndianStr), nullptr, 2);
            cout << "Opposite Endian: " << otherEndianStr + " " << hex << "(" << otherEndian << ")" << endl;
            myFile2 << otherEndianStr << endl;

            //Printing the [middle byte] in binary and hex to the console, and writing it to other file (in bin).
            unsigned char midEightChar = midEight(stoi(removeSpaces(otherEndianStr), nullptr, 2));
            cout << "Middle byte:     " << bin_str8(midEightChar) + " " << hex << "(" << +midEightChar << ")" << endl;
            myFile3 << bin_str8(midEightChar) << endl;

            cout << "---" << endl;
        }
        myFile.close();
    }
    myFile3.close();
    myFile2.close();
    cout << "\nThe run was successful!" << endl;

    return 0;
}
