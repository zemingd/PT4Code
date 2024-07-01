n = gets.to_i
num = gets.strip.split.map(&:to_i)
ary = Array.new(n,0)
if n==1
  puts "0"
else
  i = 0
  k = 0
  while i < n-1 do
    if num[i] >= num[i+1]
      ary[k] += 1
    else
      k += 1
    end
    i += 1
  end
  puts ary.max
end