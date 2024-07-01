N = gets.split.map(&:to_i)
a = N[0]
b = N[1]
x = N[2]
z = b - a
ans = z / x

if x == 1
  if a == 0
    p b + 1
  elsif a == 1
    p b
  else
    p z + 2
  end
  exit
end

if b % x == 0 || a % x == 0
  ans += 1
end

if x > b
  p 0
  exit
end

p ans