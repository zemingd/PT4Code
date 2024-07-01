s = gets

memo = s[0]
1.upto(s.size) do |i|
  if memo == s[i]
    puts "Bad"
    exit
  end
  memo = s[i]
end

puts "Good"