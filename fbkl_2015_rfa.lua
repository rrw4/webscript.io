local username = 'r.rj.wang@gmail.com'
local password = 'VfJcVYMrFKlqy9Kbn0yLqA'
local server = 'smtp.mandrillapp.com'

storage.rfa_count_2015 = (storage.rfa_count_2015 or 0) + 1
rfa_count = tonumber(storage.rfa_count_2015)

players = { {"Anthony Davis", "C", "NOR", 8, "Larry/Kevin"},
            {"Damien Lillard", "PG", "POR", 8, "Vince"},
            {"Bradley Beal", "SG", "WAS", 8, "Peter/Mike"},
            {"Moe Harkless", "SF", "POR", 6, "Andrew"}}

if rfa_count <= table.getn(players) then
  email_text = "2015 Veteran Auction RFA: " .. players[rfa_count][2] .. " " .. players[rfa_count][1] .. " " .. players[rfa_count][3] ..
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
