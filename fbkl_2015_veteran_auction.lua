local username = 'r.rj.wang@gmail.com'
local password = 'VfJcVYMrFKlqy9Kbn0yLqA'
local server = 'smtp.mandrillapp.com'

storage.ufa_count_2015 = (storage.ufa_count_2015 or 0) + 1
ufa_count = tonumber(storage.ufa_count_2015)

players = {{1,"Stephen Curry, GS PG/SG",32,"UFA3","Mike"},
  {9,"LaMarcus Aldridge, SA PF/C",20,"",""},
  {17,"Jrue Holiday, Nor PG/SG",16,"",""},
  {25,"Isaiah Thomas, Bos PG",12,"",""},
  {71,"Jose Calderon, NY PG",1,"UFA3","Andrew"},
  {72,"Paul Pierce, LAC SF",1,"",""},
  {73,"Devin Harris, Dal PG/SG",1,"",""},
  {74,"Randy Foye, Den SG",1,"",""},
  {2,"James Harden, Hou SG",32,"",""},
  {10,"Ty Lawson, Hou PG",20,"",""},
  {18,"Chandler Parsons, Dal SF",16,"",""},
  {26,"Mike Conley, Mem PG",12,"",""},
  {75,"Nikola Pekovic, Min C",1,"",""},
  {76,"Matt Barnes, Mem SF",1,"",""},
  {77,"Jameer Nelson, Den PG",1,"",""},
  {78,"Omer Asik, Nor C",1,"",""},
  {3,"Kevin Durant, OKC SF/PF",32,"",""},
  {11,"Rudy Gay, Sac SF/PF",20,"",""},
  {19,"Dwight Howard, Hou C",16,"",""},
  {27,"Kemba Walker, Cha PG/SG",12,"",""},
  {79,"Anthony Morrow, OKC SG/SF",1,"",""},
  {80,"Andrea Bargnani, Bkn PF",1,"",""},
  {81,"Marcus Morris, Det PF/SF",1,"UFA3","Roger"},
  {82,"Lance Stephenson, LAC SG/SF",1,"UFA3","Steve"},
  {4,"LeBron James, Cle SF/PF",32,"",""},
  {12,"Pau Gasol, Chi PF/C",20,"",""},
  {20,"Kevin Love, Cle PF",16,"",""},
  {28,"Greg Monroe, Mil PF/C",12,"UFA5","Will/Ernest"},
  {83,"O.J. Mayo, Mil SG",1,"",""},
  {84,"Manu Ginobili, SA SG/SF",1,"",""},
  {85,"Nene Hilario, Wsh PF/C",1,"",""},
  {86,"Tony Allen, Mem SG/SF",1,"",""},
  {5,"Chris Paul, LAC PG",26,"",""},
  {13,"Eric Bledsoe, Pho PG/SG",20,"UFA5","Larry/Kevin"},
  {21,"Monta Ellis, Ind SG",16,"",""},
  {29,"Tobias Harris, Orl PF/SF",12,"",""},
  {87,"Aaron Brooks, Chi PG",1,"",""},
  {88,"Anderson Varejao, Cle C",1,"",""},
  {89,"Mario Chalmers, Mia PG/SG",1,"",""},
  {90,"J.J. Barea, Dal PG",1,"",""},
  {6,"John Wall, Wsh PG",26,"UFA3","Larry/Kevin"},
  {14,"Brook Lopez, Bkn C",16,"",""},
  {22,"Derrick Favors, Uta PF/C",16,"UFA5","Lam"},
  {30,"Dwyane Wade, Mia SG",12,"",""},
  {91,"Patrick Beverley, Hou PG",1,"",""},
  {92,"C.J. Miles, Ind SF/SG",1,"",""},
  {93,"Greivis Vasquez, Mil PG/SG",1,"",""},
  {94,"D.J. Augustin, OKC PG",1,"",""},
  {7,"Carmelo Anthony, NY SF/PF",20,"",""},
  {15,"Nicolas Batum, Cha SF",16,"",""},
  {23,"Al Horford, Atl C/PF",16,"",""},
  {31,"Dirk Nowitzki, Dal PF",12,"",""},
  {95,"Channing Frye, ORL C",1,"UFA3","Cho"},
  {33,"David Lee, Bos PF",12,"",""},
  {34,"Kobe Bryant, LAL SG",12,"",""},
  {35,"Danilo Gallinari, Den SF/PF",8,"",""},
  {8,"Jimmy Butler, Chi SG/SF",20,"UFA3","Larry/Kevin"},
  {16,"Chris Bosh, Mia C/PF",16,"",""},
  {24,"Al Jefferson, Cha C/PF",16,"",""},
  {32,"Tim Duncan, SA PF/C",12,"",""},
  {36,"Kyle Korver, Atl SG/SF",8,"",""},
  {37,"Zach Randolph, Mem PF",8,"",""},
  {38,"George Hill, Ind PG/SG",8,"",""},
  {39,"Thaddeus Young, Bkn SF/PF",8,"",""},
  {40,"Robin Lopez, NY C",8,"",""},
  {41,"Kevin Martin, Min SG",8,"",""},
  {42,"Ricky Rubio, Min PG",8,"UFA5","Lam"},
  {43,"Marcin Gortat, Wsh C",8,"",""},
  {44,"Eric Gordon, Nor SG",8,"",""},
  {45,"Avery Bradley, Bos SG",6,"",""},
  {46,"J.R. Smith, Cle SG/SF",6,"UFA3","Roger"},
  {47,"Deron Williams, Dal PG",6,"",""},
  {48,"Ryan Anderson, Nor PF/SF",6,"",""},
  {49,"Tyson Chandler, Pho C",4,"",""},
  {50,"Joakim Noah, Chi C",4,"UFA3","Cho"},
  {51,"Danny Green, SA SG/SF",4,"UFA3","Eric"},
  {52,"Tony Parker, SA PG",4,"",""},
  {53,"Josh Smith, LAC SF/PF",4,"",""},
  {54,"Rajon Rondo, Sac PG",4,"",""},
  {55,"Brandon Jennings, Det PG",4,"",""},
  {56,"Jared Sullinger, Bos PF/C",4,"",""},
  {57,"Joe Johnson, Bkn SG/SF",2,"",""},
  {58,"Al-Farouq Aminu, Por SF/PF",2,"",""},
  {59,"Bismack Biyombo, Tor C",2,"",""},
  {60,"Evan Turner, Bos SG/SF",2,"",""},
  {61,"Jeremy Lin, Cha PG",2,"",""},
  {62,"Luol Deng, Mia SF",2,"",""},
  {63,"David West, SA PF",2,"",""},
  {64,"Amir Johnson, Bos PF/C",2,"UFA3","Steve"},
  {65,"Andrew Bogut, GS C",2,"",""},
  {66,"Zaza Pachulia, Dal C",2,"",""},
  {67,"Jamal Crawford, LAC SG",1,"UFA3","Tom"},
  {68,"Jordan Hill, Ind PF/C",1,"UFA3","Peter/Mike"},
  {69,"Taj Gibson, Chi PF/C",1,"",""},
  {70,"Rodney Stuckey, Ind SG",1,"",""}}

if ufa_count <= table.getn(players) then
  if players[ufa_count][4] == "" then
    email_text = "2015 Veteran Auction #" .. players[ufa_count][1] .. ": " .. players[ufa_count][2] .. ", starting bid $" .. players[ufa_count][3]
  else
    email_text = "2015 Veteran Auction #" .. players[ufa_count][1] .. ": " .. players[ufa_count][2] .. ", starting bid $" .. players[ufa_count][3] .. " (" .. players[ufa_count][4] .. ": " .. players[ufa_count][5] .. ")"
  end

  email.send {
    server = server,
    username = username,
    password = password,
    from = 'FBKL Auction Bot <r.rj.wang@gmail.com>',
    -- to = 'franchise-basketball-keeper-league@googlegroups.com',
    to = 'r.rj.wang@gmail.com',
    subject = email_text,
    text = email_text
  }
  return "Email sent. Thanks!"
end

return "No more auctions"
