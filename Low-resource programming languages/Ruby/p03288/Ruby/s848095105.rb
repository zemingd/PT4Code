r = gets.to_i
answer = "AGC"
if r < 1200
    answer = "ABC"
elsif r < 2800
    answer = "ARC"
end
puts answer 