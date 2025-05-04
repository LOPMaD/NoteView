#include <iostream>
#include <fstream>
#include <ncurses.h>
#include <vector>
#include <cstring>
#include "viewing.h"
using namespace std;




MyStruct MS;

void viewing(vector<string> lines) {
    int ch;
    int totalLines = lines.size();
    MEVENT event;
    for (int i = 0; i < totalLines; i++)
    {
            lines[i].push_back(' ');
    }
    
    while (true) {
        erase();
        

        for (int i = MS.startLines; i < MS.startLines + MS.linesScreen && i < totalLines; ++i) { 
            
            printw("%3d", i + 1);
            printw(" ");

            for (int j = 0; j <= lines[i].size(); j++)
            {
                if (MS.cursorY == i && MS.cursorX == j) {
                    attron(COLOR_PAIR(1)); 
                }
                if (lines[i].size() == 0)
                {
                    lines[i] = " ";
                }
                printw("%c", lines[i][j]);
                attroff(COLOR_PAIR(1)); 
            } 
            printw("\n");
        }
        refresh(); 

        ch = getch(); 
        getmouse(&event);
        if (ch == KEY_UP || event.bstate & BUTTON4_PRESSED) {
            MS.cursorY--;

            if (MS.cursorX > lines[MS.cursorY].size() - 1)
            {
                MS.cursorX = 0;
            }
            
            if(MS.cursorY < 0)
            {   
                MS.cursorScreenY = MS.linesScreen;
                MS.startLines = totalLines - MS.linesScreen;
                MS.cursorY = totalLines - 1;
            }
            else if(MS.cursorScreenY == 1)
            {
                MS.startLines--;
            }
            else
            {
                MS.cursorScreenY--;
            }
        } 
        else if (ch == KEY_DOWN || event.bstate & BUTTON5_PRESSED) {
            MS.cursorY++; 

            if (MS.cursorX > lines[MS.cursorY].size() - 1)
            {
                MS.cursorX = 0;
            }
            
            if(MS.cursorY == totalLines)
            {
                MS.startLines = 0;
                MS.cursorY = 0;
                MS.cursorScreenY = 1;
            }
            else if(MS.cursorScreenY == MS.linesScreen)
            {
                MS.startLines++;
            }
            else
            {
                MS.cursorScreenY++;
            }
            
            
        }
        else if (ch == KEY_LEFT) {
            MS.cursorX--;
            if(MS.cursorX < 0 && MS.cursorY == 0)
            {
                MS.cursorScreenY = MS.linesScreen;
                MS.startLines = totalLines - MS.linesScreen;
                MS.cursorY = totalLines - 1;
                MS.cursorX = lines[MS.cursorY].size() - 1;
            }
            else if (MS.cursorX < 0)
            {
                if (MS.cursorScreenY == 1)
                {
                    MS.cursorY--;
                    MS.startLines--;
                    MS.cursorX = lines[MS.cursorY].size() - 1;
                }
                else
                {
                    MS.cursorY--;
                    MS.cursorX = lines[MS.cursorY].size() - 1;
                    MS.cursorScreenY--;
                }
                  
            }
            

        }
        else if (ch == KEY_RIGHT) {
            MS.cursorX++;
            if(MS.cursorX > lines[MS.cursorY].size() - 1 && MS.cursorY == totalLines - 1)
            {
                MS.startLines = 0;
                MS.cursorY = 0;
                MS.cursorScreenY = 1;
                MS.cursorX = 0;
            }
            else if (MS.cursorX == lines[MS.cursorY].size())
            {
                if (MS.cursorScreenY == MS.linesScreen)
                {
                    MS.cursorY++;
                    MS.startLines++;
                    MS.cursorX = 0;
                }
                else
                {
                    MS.cursorY++;
                    MS.cursorX = 0;
                    MS.cursorScreenY++;
                }
            }

        }
        else if (ch == 27) {
            break;
        }
    }
}