s = gets.strip

0.upto(s.length - 2) do |i|
  if s[i] == s[i + 1]
    puts "Bad"
    exit 0
  end
end

puts "Good"
