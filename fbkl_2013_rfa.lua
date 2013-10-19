local username = 'r.rj.wang@gmail.com'
local password = 'VfJcVYMrFKlqy9Kbn0yLqA'
local server = 'smtp.mandrillapp.com'

storage.rfa_count = (storage.rfa_count or 0) + 1
rfa_count = tonumber(storage.rfa_count)

players = { {"Paul George", "SG", "IND", 8, "Lam"},
            {"Eric Bledsoe", "PG", "PHO", 5, "Larry/Kevin"},
            {"Derrick Favors", "PF", "UTA", 8, "Larry/Kevin"},
            {"Patrick Patterson", "C", "SAC", 6, "Cho"},
            {"Ricky Rubio", "PG", "MIN", 8, "Lam"},
            {"Ed Davis", "PF", "MEM", 5, "Andrew"},
            {"Tiago Splitter", "PF", "SAS", 8, "Lam"},
            {"Xavier Henry", "SG", "LAL", 5, "Mike"},
            {"Greg Monroe", "C", "DET", 12, "Will"},
            {"Timofey Mozgov", "C", "DEN", 4, "Peter/Mike"},
            {"Al-Farouq Aminu", "SF", "NOH", 6, "Cho" }}

if rfa_count <= table.getn(players) then
  email_text = "2013 Veteran Auction RFA: " .. players[rfa_count][2] .. " " .. players[rfa_count][1] .. " " .. players[rfa_count][3] ..
    ", minimum bid $" .. players[rfa_count][4] .. " (owner: " .. players[rfa_count][5] .. ")"
  email.send {
    server = server,
    username = username,
    password = password,
    from = 'FBKL Auction Bot <r.rj.wang@gmail.com>',
    to = 'franchise-basketball-keeper-league@googlegroups.com',
    subject = email_text,
    text = email_text
  }
  return "Email sent. Thanks!"
end

return "No more auctions"
