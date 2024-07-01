w, h, n = gets.split.map(&:to_i)
arr = [nil, 0, w, 0, h]

n.times do
  x, y, a = gets.split.map(&:to_i)
  
  arr[a] = a <= 2 ? x : y
end

puts (arr[1]...arr[2]).to_a.length * (arr[3]...arr[4]).to_a.length
