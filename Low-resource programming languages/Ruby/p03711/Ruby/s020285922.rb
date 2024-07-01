a = [1, 3, 5, 7, 8, 10, 12]
b = [4, 6, 9, 11]
c = [2]

x, y = gets.split.map(&:to_i)
ans = 'No'
[a, b, c].each do |s|
  if s.include?(x) && s.include?(y)
    ans = 'Yes'
    break
  end
end
puts ans