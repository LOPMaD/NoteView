#ifndef VIEWING_H
#define VIEWING_H

#include <vector>
#include <string>
using namespace std;

void viewing(vector<string> lines);

struct MyStruct
{
    vector<string> lines;
    int cursorY = 0;
    int cursorX = 0;
    int startLines = 0;
    int linesScreen = 25;
    int cursorScreenY = 1;
};

#endif