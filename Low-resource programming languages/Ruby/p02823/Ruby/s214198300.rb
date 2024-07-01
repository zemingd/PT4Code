input = gets.split

N = input[0].to_i
A = input[1].to_i
B = input[2].to_i

b = 0
a = N
d = 0

if (A <= B)
  b = A
  a = B
  d = B - A
  dhb = A
  dat = N - a
elsif (A > B)
  b = B
  a = A
  d = A - B
  dhb = A
  dat = N - a
end

if (d%2 != 0)
  if (dhb <= dat)
    puts dat
  else
    puts dhb
  end
else
  puts d /2
end