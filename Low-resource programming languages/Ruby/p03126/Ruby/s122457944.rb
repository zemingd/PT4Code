n, m = gets.split.map &:to_i
arr = Array.new(n)
n.times do |i|
  arr[i] = gets.split.map &:to_i
  arr[i].shift
end
num = Array.new(m, 0)
m.times do |i|
  n.times do |j|
    if arr[j].any? { |e| e == (i+1) }
      num[i] += 1
    end
  end
end
puts num.count(n)