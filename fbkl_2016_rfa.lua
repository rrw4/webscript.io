local username = 'rrw4'
local password = ''
local server = 'smtp.sendgrid.net'

storage.rfa_count_2016 = (storage.rfa_count_2016 or 0) + 1
rfa_count = tonumber(storage.rfa_count_2016)

players = { {"Draymond Green", "GS", "SF", 5, "Eric"},
            {"Victor Oladipo", "OKC", "SG", 8, "Vince"},
            {"Evan Fournier", "Orl", "SG", 6, "Cho"},
            {"Michael Carter-Williams", "Mil", "PG", 8, "Steve"},
            {"Mason Plumlee", "Por", "PF", 5, "Andrew"},
            {"Terrence Ross", "Tor", "SG", 6, "Cho"},
            {"Dion Waiters", "Mia", "SG", 8, "Mike"},
            {"Miles Plumlee", "MIL", "PF", 4, "Sean"},
            {"Terrence Jones", "HOU", "PF", 6, "Sean"} }

if rfa_count <= table.getn(players) then
  email_text = "2016 Veteran Auction RFA: " .. players[rfa_count][3] .. " " .. players[rfa_count][1] .. " " .. players[rfa_count][2] ..
    ", minimum bid $" .. players[rfa_count][4] .. " (owner: " .. players[rfa_count][5] .. ")"
  email.send {
    server = server,
    username = username,
    password = password,
    from = 'FBKL Auction Bot <r.rj.wang@gmail.com>',
    --to = 'franchise-basketball-keeper-league@googlegroups.com',
    to = 'r.rj.wang@gmail.com',
    subject = email_text,
    text = email_text
  }
  return "Email sent. Thanks!"
end

return "No more auctions"
