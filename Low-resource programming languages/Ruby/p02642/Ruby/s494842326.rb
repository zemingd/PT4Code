n = gets.to_i
a = gets.split.map(&:to_i).sort

res = []
while a.length > 0
  r = a.shift
  exist_same_value = false
  a.delete_if do |x|
    exist_same_value = true if x == r
    x % r == 0
  end
  res << r unless exist_same_value
end

p res.count
