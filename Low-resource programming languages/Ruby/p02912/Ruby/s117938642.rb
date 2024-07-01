n, m = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i).sort

m.times do
  arr[-1] /= 2
  arr.sort!
end

p arr.inject(:+)
