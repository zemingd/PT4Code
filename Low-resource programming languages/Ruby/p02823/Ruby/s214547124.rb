def main(argv)
  (n, a, b) = gets.chomp.split(' ').map(&:to_i)

  if (a - b) % 2 == 0 then
    x = (a + b) / 2
    puts (b - x).to_s
    return
  end
  
  puts [b - 1, n - a].min.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end