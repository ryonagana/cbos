#ifndef KVGA_H
#define KVGA_H


#define COLOR_BLACK      0
#define COLOR_BLUE       1
#define COLOR_GREEN      2
#define COLOR_CYAN       3
#define COLOR_RED        4
#define COLOR_MAGENTA    5
#define COLOR_BROWN      6
#define COLOR_LIGHTGREY  7
#define COLOR_DARKGREY   8
#define COLOR_LIGHTBLUE  9
#define COLOR_LIGHTGREEN 10
#define COLOR_LIGHTCYAN  11
#define COLOR_LIGHTRED   12
#define COLOR_LIGHTMAG   13
#define COLOR_LIGHTBROWN 14
#define COLOR_WHITE      15


struct KPOINT  {
    int x;
    int y;
};

struct KVGA_CHAR {
    char ch:8;
    char fg:4;
    char bg:4;
};


void init_vga();


#endif
