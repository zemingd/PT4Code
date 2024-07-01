N = gets.chop.to_i
A = gets.chop.split.map(&:to_i)

hash = {}
flag = true

A.each do |i|
  hash[i] ||= 0
  hash[i] += 1

  if hash[i] > 1
    flag = false
    break
  end
end

puts flag ? 'YES' : 'NO'
