n = gets.to_i
answer = "AGC"

if n < 1200
  answer = "ABC"
elsif n < 2800
  answer = "ARC"
end

puts answer