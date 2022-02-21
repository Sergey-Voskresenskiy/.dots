local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")

local art = {
    "            :h-                                  Nhy`               ",
    "           -mh.                           h.    `Ndho               ",
    "           hmh+                          oNm.   oNdhh               ",
    "          `Nmhd`                        /NNmd  /NNhhd               ",
    "          -NNhhy                      `hMNmmm`+NNdhhh               ",
    "          .NNmhhs              ```....`..-:/./mNdhhh+               ",
    "           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               ",
    "           oNNNdhhdo..://++//++++++/+++//++///++/-.`                ",
    "      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       ",
    " .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        ",
    " h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         ",
    " hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        ",
    " /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       ",
    "  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      ",
    "   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     ",
    "     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    ",
    "       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    ",
    "       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   ",
    "       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   ",
    "       //+++//++++++////+++///::--                 .::::-------::   ",
    "       :/++++///////////++++//////.                -:/:----::../-   ",
    "       -/++++//++///+//////////////               .::::---:::-.+`   ",
    "       `////////////////////////////:.            --::-----...-/    ",
    "        -///://////////////////////::::-..      :-:-:-..-::.`.+`    ",
    "         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   ",
    "           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ ",
    "            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``",
    "           s-`::--:::------:////----:---.-:::...-.....`./:          ",
    "          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           ",
    "         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              ",
    "        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                ",
    "                        .-:mNdhh:.......--::::-`                    ",
    "                           yNh/..------..`                          ",
  }

dashboard.section.header.val = art;
dashboard.section.header.opts.hl = "Include"

dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
