s = gets.chomp

# i = gets.to_i

4.times do |i|
  if s[i] == s[i+1] # i と i+1 は同じでないのでスルーされる
    puts "Bad"
  end
end

puts "Good"