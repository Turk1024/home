//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/

    { " ",    "pacavail",                                 3600,   0 },
    { "  ",  "memused",                                  2,      0 },
    { "  ",  "cpustat",                                  1,      0 },
    { " ",    "volume",                                   0,      1 },
    { "  ",  "weather.py",                               1800,   0 },
    { "  ",   "date '+%A, %b %d    %I:%M %p '",           1,      0 },
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "    ";
static unsigned int delimLen = 5;
