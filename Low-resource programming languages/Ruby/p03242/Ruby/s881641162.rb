n = gets.chomp
result = ""
3.times do |i|
  result += n[i] =="1" ? "9" : "1"
end
puts result
