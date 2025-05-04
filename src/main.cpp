#include <iostream>
#include <fstream>
#include <ncurses.h>
#include <vector>
#include <cstring>
#include "viewing.h"
using namespace std;

int main(int argc, char* argv[]) {
    
    initscr();
    keypad(stdscr, TRUE); 
    start_color();
    cbreak();
    mousemask(BUTTON4_PRESSED | BUTTON5_PRESSED, NULL);
    init_pair(1, COLOR_BLACK, COLOR_WHITE);
    int ch;

    fstream MyFile(argv[1]);
    string text;
    string iput;

    vector<string> lines;
    while (getline(MyFile, text)) {
        lines.push_back(text);
    }
    
    viewing(lines);

    MyFile.close();
    endwin(); 
    return 0;
}

