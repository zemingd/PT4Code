n = gets.chomp

ans = ''
n.chars.each do |c|
  if c == '1'
    ans << '9'
  else
    ans << '1'
  end
end

puts ans
