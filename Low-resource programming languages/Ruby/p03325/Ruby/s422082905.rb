n = gets.to_i
a = gets.split.map(&:to_i)
a.map! do |s|
  i = 0
  while s[i] == 0
    i += 1
  end
  i
end
puts a.inject(:+)