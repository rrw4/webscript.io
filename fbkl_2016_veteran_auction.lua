local username = 'rrw4'
local password = ''
local server = 'smtp.sendgrid.net'

storage.ufa_count_2016 = (storage.ufa_count_2016 or 0) + 1
ufa_count = tonumber(storage.ufa_count_2016)

players = {{1,"James Harden, Hou SG",32,"",""},
  {9,"Kyle Lowry, Tor PG",20,"UFA3","Lam"},
  {17,"Carmelo Anthony, NY SF",16,"",""},
  {25,"Trevor Ariza, Hou SF",12,"UFA3","Roger"},
  {71,"Jared Sullinger, Tor PF",1,"",""},
  {72,"Kyle Korver, Atl SG",1,"",""},
  {73,"Timofey Mozgov, LAL C",1,"UFA3","Larry/Kevin"},
  {74,"Jeff Green, Orl SF",1,"",""},
  {2,"Kevin Durant, GS SF",32,"",""},
  {10,"Kyrie Irving, Cle PG",20,"UFA5","Vince"},
  {18,"Kevin Love, Cle PF",16,"",""},
  {26,"Jrue Holiday, Nor PG",12,"",""},
  {75,"Taj Gibson, Chi PF",1,"",""},
  {76,"Jerami Grant, Phi SF",1,"",""},
  {77,"Devin Harris, Dal PG",1,"",""},
  {78,"Michael Beasley, Hou SF",1,"",""},
  {3,"Chris Paul, LAC PG",32,"",""},
  {11,"Blake Griffin, LAC PF",20,"UFA3","Tom"},
  {19,"Marc Gasol, Mem C",16,"",""},
  {27,"Jeff Teague, Ind PG",12,"UFA3","Peter/Mike"},
  {79,"Patrick Patterson, Tor PF",1,"",""},
  {80,"Cory Joseph, Tor PG",1,"",""},
  {81,"Arron Afflalo, Sac SG",1,"UFA3","Vince"},
  {82,"Roy Hibbert, Cha C",1,"",""},
  {4,"Kawhi Leonard, SA SF",26,"UFA5","Lam"},
  {12,"Eric Bledsoe, Pho PG",20,"",""},
  {20,"Pau Gasol, SA PF",16,"",""},
  {28,"Brandon Knight, Pho PG",12,"UFA5","Peter/Mike"},
  {83,"Josh Smith, Hou SF",1,"",""},
  {84,"JaMychal Green, Mem PF",1,"",""},
  {85,"Ersan Ilyasova, OKC PF",1,"",""},
  {86,"Tyson Chandler, Pho C",1,"",""},
  {5,"LeBron James, Cle SF",26,"",""},
  {13,"Klay Thompson, GS SG",20,"UFA5","Vince"},
  {21,"DeAndre Jordan, LAC C",16,"UFA3","Cho"},
  {29,"Dwyane Wade, Chi SG",12,"",""},
  {87,"Isaiah Canaan, Chi PG",1,"",""},
  {88,"Gerald Henderson, Phi SG",1,"",""},
  {89,"Austin Rivers, LAC SG",1,"",""},
  {90,"C.J. Miles, Ind SF",1,"",""},
  {6,"DeMarcus Cousins, Sac C",26,"UFA3","Peter/Mike"},
  {14,"Brook Lopez, Bkn C",20,"",""},
  {22,"DeMar DeRozan, Tor SG",16,"UFA3","Tom"},
  {30,"Reggie Jackson, Det PG",12,"UFA3","Eric"},
  {91,"T.J. McConnell, Phi PG",1,"",""},
  {92,"Seth Curry, Dal SG",1,"",""},
  {93,"Metta World Peace, LAL SF",1,"",""},
  {94,"P.J. Tucker, PHO SF",1,"UFA3","Eric"},
  {7,"John Wall, Wsh PG",26,"",""},
  {15,"Serge Ibaka, Orl PF",20,"",""},
  {23,"Nikola Vucevic, Orl C",16,"UFA5","Peter/Mike"},
  {31,"Dirk Nowitzki, Dal PF",12,"",""},
  {95,"Boris Diaw, UTA PF",1,"UFA3","Andrew"},
  {96,"Andrew Nicholson, ORL PF",1,"UFA3","Sean"},
  {97,"Josh McRoberts, MIA PF",1,"UFA3","Sean"},
  {33,"Rudy Gay, Sac SF",12,"",""},
  {8,"Paul Millsap, Atl PF",20,"UFA3","Roger"},
  {16,"LaMarcus Aldridge, SA PF",16,"",""},
  {24,"Marcin Gortat, Wsh C",16,"",""},
  {32,"Chandler Parsons, Mem SF",12,"",""},
  {34,"Dwight Howard, Atl C",12,"",""},
  {35,"Mike Conley, Mem PG",12,"",""},
  {36,"Greg Monroe, Mil PF",12,"",""},
  {37,"Monta Ellis, Ind SG",8,"",""},
  {38,"Ricky Rubio, Min PG",8,"",""},
  {39,"Tobias Harris, Det PF",8,"",""},
  {40,"Jonas Valanciunas, Tor C",8,"UFA5","Lam"},
  {41,"Kenneth Faried, Den PF",8,"UFA5","Cho"},
  {42,"George Hill, Uta PG",8,"",""},
  {43,"Darren Collison, Sac PG",6,"UFA3","Mike"},
  {44,"DeMarre Carroll, Tor SF",6,"UFA3","Roger"},
  {45,"Derrick Rose, NY PG",6,"",""},
  {46,"Tyreke Evans, Nor SF",6,"",""},
  {47,"Luol Deng, LAL SF",6,"",""},
  {48,"Evan Turner, Por SG",6,"",""},
  {49,"Al Jefferson, Ind C",4,"",""},
  {50,"Al-Farouq Aminu, Por SF",4,"",""},
  {51,"Marvin Williams, Cha SF",4,"UFA3","Steve"},
  {52,"Wesley Matthews, Dal SG",4,"",""},
  {53,"Robin Lopez, Chi C",4,"",""},
  {54,"Zach Randolph, Mem PF",4,"",""},
  {55,"Chris Bosh, Mia C",4,"",""},
  {56,"Danny Green, SA SG",4,"",""},
  {57,"Deron Williams, Dal PG",4,"",""},
  {58,"Jamal Crawford, LAC SG",4,"",""},
  {59,"Joakim Noah, NY C",4,"",""},
  {60,"J.R. Smith, Cle SG",4,"",""},
  {61,"Joe Johnson, Uta SG",4,"",""},
  {62,"Markieff Morris, Wsh PF",2,"UFA3","Eric"},
  {63,"Eric Gordon, Hou SG",2,"",""},
  {64,"Jarrett Jack, Atl PG",2,"",""},
  {65,"Alec Burks, Uta SG",2,"",""},
  {66,"Brandon Jennings, NY PG",2,"",""},
  {67,"Louis Williams, LAL PG",2,"",""},
  {68,"Lance Stephenson, Nor SG",2,"",""},
  {69,"Tony Parker, SA PG",2,"",""},
  {70,"Patrick Beverley, Hou PG",2,"",""}}

if ufa_count <= table.getn(players) then
  if players[ufa_count][4] == "" then
    email_text = "2016 Veteran Auction #" .. players[ufa_count][1] .. ": " .. players[ufa_count][2] .. ", starting bid $" .. players[ufa_count][3]
  else
    email_text = "2016 Veteran Auction #" .. players[ufa_count][1] .. ": " .. players[ufa_count][2] .. ", starting bid $" .. players[ufa_count][3] .. " (" .. players[ufa_count][4] .. ": " .. players[ufa_count][5] .. ")"
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