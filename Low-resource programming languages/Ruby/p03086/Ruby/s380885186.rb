s = gets.chomp

ans = []
tmp = 0

s.each_char do |c|
  if c =~ /(A|C|G|T)/
    tmp += 1
  else
    ans << tmp
    tmp = 0
  end
end

puts ans.max
