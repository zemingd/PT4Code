arr = []
5.times do |i|
  a = gets.to_i
  arr << a/10.to_f
end
cmb = arr.permutation(5).to_a

ans = arr.inject(:+) * 100
cmb.each do |a|
  sum = 0
  5.times do |i|
    if i != 4
      tmp = a[i]
      sum += tmp.ceil
    elsif
      sum += a[i]
    end
  end
  if ans > sum
    ans = sum
  end
end

puts (ans * 10).floor
    