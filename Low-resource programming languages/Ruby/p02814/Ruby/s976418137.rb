N,M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

x = 1
nullflag = false
for a in A
  if a%4==0
    nullflag = true
    break
  end
  x = x.lcm(a)
end

if nullflag
  p 0
  return
end

y = ( 2 * M ) / x

p (y + 1) / 2