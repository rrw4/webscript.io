local username = 'r.rj.wang@gmail.com'
local password = 'VfJcVYMrFKlqy9Kbn0yLqA'
local server = 'smtp.mandrillapp.com'

storage.rfa_count_2014 = (storage.rfa_count_2014 or 0) + 1
rfa_count = tonumber(storage.rfa_count_2014)

players = { {"Kyrie Irving", "PG", "CLE", 10, "Peter/Mike"},
            {"Klay Thompson", "SG", "GSW", 8, "Vince"},
            {"Tobias Harris", "PF", "ORL", 8, "Larry/Kevin"},
            {"Iman Shumpert", "SG", "NYK", 8, "Cho"},
            {"Isaiah Thomas", "PG", "PHO", 4, "Roger"},
            {"Nikola Vucevic", "C", "ORL", 8, "Lam"},
            {"Jonas Valanciunas", "C", "TOR", 8, "Cho"},
            {"Enes Kanter", "C", "UTA", 10, "Lam"},
            {"Kawhi Leonard", "SF", "SAS", 10, "Lam"},
            {"Brandon Knight", "PG", "MIL", 10, "Vince"},
	          {"Alec Burks", "SG", "UTA", 10, "Peter/Mike"},
	          {"Norris Cole", "PG", "MIA", 6, "Eric"},
	          {"Kemba Walker", "PG", "CHA", 10, "Tom"},
	          {"Kenneth Faried", "PF", "DEN", 8, "Cho"},
	          {"Tristan Thompson", "PF", "CLE", 10, "Will/Ernest"},
            {"Derrick Williams", "PF", "SAC", 10, "Will/Ernest"}}

if rfa_count <= table.getn(players) then
  email_text = "2014 Veteran Auction RFA: " .. players[rfa_count][2] .. " " .. players[rfa_count][1] .. " " .. players[rfa_count][3] ..
    ", minimum bid $" .. players[rfa_count][4] .. " (owner: " .. players[rfa_count][5] .. ")"
  email.send {
    server = server,
    username = username,
    password = password,
    from = 'FBKL Auction Bot <r.rj.wang@gmail.com>',
    to = 'franchise-basketball-keeper-league@googlegroups.com',
		-- to = 'r.rj.wang@gmail.com',
		subject = email_text,
    text = email_text
  }
  return "Email sent. Thanks!"
end

return "No more auctions"
