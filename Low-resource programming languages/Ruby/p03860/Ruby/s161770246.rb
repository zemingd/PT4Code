N = gets.split.map(&:to_i)
a = N[0]
b = N[1]
x = N[2]
z = b - a

if x == 1
  if a == 0
    p b + 1
  else
    p z + 2
  end
  exit
end

ans = z / x
ans += 1 if b % x == 0 || a % x == 0

p ans