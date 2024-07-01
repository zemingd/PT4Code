date = gets.split("/")
year = date[0].to_i
month = date[1].to_i
day = date[2].to_i

if year = 2019 && month <= 4 || year < 2019
  puts "Heisei"
else
  puts "TBD"
end

  
