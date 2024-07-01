n = gets.to_i
a = gets.split(' ').map(&:to_i)

memo = [0]
n.times do |i|
  memo[i] = memo[i - 1] + a[i]
end
total = memo[-1]

min = total # inf の代わり
n.times do |i|
  diff = ((total - memo[i]) - memo[i]).abs
  if min > diff
    min = diff
  else
    print min
    break
  end
end
