n = gets.to_i
num = gets.strip.split.map(&:to_i)
a = num.sort[n/2-1]
b = num.sort[n/2]
#候補はaまたはb
for i in 0..n-1
  if num[i]<=a
    puts b
  else
    puts a
  end
end