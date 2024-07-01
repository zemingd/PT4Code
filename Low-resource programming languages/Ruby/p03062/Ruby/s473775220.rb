n = gets.to_i
a = gets.split.map(&:to_i)

sum = 0
min = 10**9
mcnt = 0
zero = false
a.each{|x|
  sum += x.abs
  min = x.abs if min > x.abs
  mcnt += 1 if x<0
  zero = true if x==0
}

if mcnt%2==0 || zero
  p sum
else
  p sum-min*2
end