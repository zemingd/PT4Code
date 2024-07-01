s = gets.strip

ans = ""

(0..s.size-1).each do |i|
  case s[i]
  when "0" then
    ans = ans + "0"
  when "1" then
    ans = ans + "1"
  when "B" then
    ans.slice!(-1)
  end
end

puts ans