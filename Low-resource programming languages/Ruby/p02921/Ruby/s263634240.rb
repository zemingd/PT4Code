S = gets.strip.split('')
T = gets.strip.split('')
count = 0
S.each_with_index do |s, i|
  count += 1 if s == T[i]
end
puts count