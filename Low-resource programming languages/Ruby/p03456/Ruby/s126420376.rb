def main(argv)
  (a, b) = gets.chomp.split(' ')
  n = (a + b).to_i
  m = Math.sqrt(n).floor.to_i
  puts (((m ** 2) == n) ? 'Yes' : 'No')
end

if self.to_s === 'main' then
  main(ARGV)
end