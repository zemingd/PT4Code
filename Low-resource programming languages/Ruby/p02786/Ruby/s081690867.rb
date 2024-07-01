i =$stdin.read.chomp.to_i

def f n
  if n == 1
    1
  elsif n<= 0
    0
  else
    1 + f(n/2) * 2
  end
end

puts f(i)