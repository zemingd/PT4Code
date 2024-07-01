year, month, day = gets.chomp.split("/").map(&:to_i)
answer = "Heisei" 

if year <= 2018 || (year == 2019 && month <= 4)
  answer = "TBD"
end

puts answer