S = gets.chomp

length = S.length
s = S
while !s.index("01").nil?
  s.gsub!(/01/, '')
end
while !s.index("10").nil?
  s.gsub!(/10/, '')
end

p length - s.length