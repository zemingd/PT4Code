s = gets.chomp
ans = 0
s.each_char do |c|
  case c
  when "+"
    ans += 1
  when "-"
    ans -= 1
  end
end

puts ans