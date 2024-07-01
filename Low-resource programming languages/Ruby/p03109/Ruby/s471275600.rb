y, m, _d = gets.split("/").map(&:to_i)

if y >= 2019 && m >= 5
  # 2019/05以降はTBD
  puts "TBD"
elsif y == 2019 && m <= 4
  # 2019/01~04はHeisei
  puts "Heisei"
elsif y <= 2018
  # 2018以前はHeisei
  puts "Heisei"
end
