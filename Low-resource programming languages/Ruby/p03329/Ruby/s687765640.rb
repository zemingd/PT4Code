arr = [6, 9, 36, 81, 216, 729, 1296, 6561, 7776, 46656, 59049]
N = gets.to_i
count = 0

while n >= 6
  n -= arr.select{|k| k <= n}.max
  count += 1
end

puts count + n