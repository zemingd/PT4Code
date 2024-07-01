N, L = gets.split.map(&:to_i)
arr = []
N.times do
  arr.push(gets.chomp)
end
arr.sort!
print arr.join