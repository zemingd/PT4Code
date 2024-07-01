S = gets.chomp.split('')
i = 0
m = 0

S.each do |v|
  if v.eql?('R') then
    i += 1
    m = i if m < i
  else
    i = 0
  end
end

puts m
