N = gets.to_i
a = N.times.map{gets.to_i}
hash = Hash.new(0)
sum = 0
N.times do |i|
  if hash[a[i]] == 0
    hash[a[i]] = 1
    sum += 1
  else
    hash[a[i]] = 0
    sum -= 1
  end
end
puts sum
