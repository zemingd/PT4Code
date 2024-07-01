s = gets.chomp.chars
atgc = ['A', 'T', 'G', 'C']
parts_length = []
temp = 0
ans = 0

s.each do |str|
  if atgc.include?(str)
    temp += 1
  else
    temp = 0
  end
  ans = temp if temp > ans
end

puts ans