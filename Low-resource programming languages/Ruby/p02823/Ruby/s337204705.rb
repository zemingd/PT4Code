def calc(a, b)
  x = (b + a) / 2
  return b - x
end

def main(argv)
  (n, a, b) = gets.chomp.split(' ').map(&:to_i)

  if (b - a) % 2 == 0 then
    puts calc(a, b).to_s
    return
  end

  puts [
    # 1で折り返す
    calc(1, b - a) + a,
    # nで折り返す
    calc((n - b) + a + 1, n) + (n - b) + 1
  ].min.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end