//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
  
  //{"            ", "", 0, 0},
	{"^c#66D9EF^", "~/Applications/dwmblocks/scripts/play_prev.sh",	        3600,		          17},
	{"^c#66D9EF^", "~/Applications/dwmblocks/scripts/play_pause.sh",	        5,		            18},
	{"^c#A6E22E^", "~/Applications/dwmblocks/scripts/scroll_spotify_status.sh",	        2.5,		19},
	{"^c#66D9EF^", "~/Applications/dwmblocks/scripts/play_next.sh",	        3600,		          20},
	{"^c#F92672^ ", "~/Applications/dwmblocks/scripts/cpu.sh",	4.5,		21},
	{"^c#AE81FF^", "~/Applications/dwmblocks/scripts/memory.sh",	5,		22},
	{"^c#FD971F^", "~/Applications/dwmblocks/scripts/temp.sh",	5,		23},
	{"^c#A6E22E^", "~/Applications/dwmblocks/scripts/gpu.sh",	5,		24},
	{"^c#FFE792^", "~/Applications/dwmblocks/scripts/net.sh",	4,		25},
	{"^c#66D9EF^", "~/Applications/dwmblocks/scripts/volume.sh",	2,		26},
	{"^c#F92672^", "~/Applications/dwmblocks/scripts/update.sh",	900,		27},
	{"^c#AE81FF^", "~/Applications/dwmblocks/scripts/weather.sh",	900,		28},
  {"^c#A6E22E^", "~/Applications/dwmblocks/scripts/variety.sh",	900,		29},
  {"^c#FCFCF7^", "~/Applications/dwmblocks/scripts/cal.sh",		5,		30},
	
	//{"", "~/Applications/dwmblocks/scripts/play_prev",	        3600,		            11},
};

/*
{#FCFCF7
            "background" : "#272822",
            "black" : "#3E3D32",
            "blue" : "#03395C",
            "brightBlack" : "#272822",
            "brightBlue" : "#66D9EF",
            "brightCyan" : "#66D9EF",
            "brightGreen" : "#A6E22E",
            "brightPurple" : "#AE81FF",
            "brightRed" : "#F92672",
            "brightWhite" : "#F8F8F2",
            "brightYellow" : "#FD971F",
            "cyan" : "#66D9EF",
            "foreground" : "#F8F8F2",
            "green" : "#A6E22E",
            "name" : "Monokai",
            "purple" : "#AE81FF",
            "red" : "#F92672",
            "white" : "#F8F8F2",
            "yellow" : "#FFE792"
        }
*/

//sets delimeter between status commands. NULL character ('\0') means no delimeter. 
//Need to include \0 to make click event work on status bar
static char delim[] = "^d^ \0";
static unsigned int delimLen = 4;
