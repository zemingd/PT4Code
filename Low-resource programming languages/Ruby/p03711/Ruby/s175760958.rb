x, y = gets.strip.split.map(&:to_i)

def group(i)
  return :c if i == 2
  return :a if [1, 3, 5, 7, 8, 10, 12].include?(i)
  return :b
end

puts group(x) ==  group(y) ? 'Yes' : 'No'