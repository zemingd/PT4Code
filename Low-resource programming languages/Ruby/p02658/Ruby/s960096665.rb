n = gets.to_i
a= gets.strip.split.map(&:to_i)
ans = 1


(0..n-1).each do |i|
  ans *= a[i]
  if a[i]==0
    ans = 0
    break
  elsif ans > 10**18
    ans=-1
  end
end

puts ans
