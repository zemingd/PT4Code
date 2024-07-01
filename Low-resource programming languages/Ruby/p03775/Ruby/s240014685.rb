def c_digit(n)
  return n.to_s.size
end

def main
  n = gets.to_i
  ret = 2**64-1
  i = 1
  while i * i <= n
    ret = [ret, [c_digit(i), c_digit(n/i)].max].min if n%i == 0
    i += 1
  end
  puts ret
end

main
