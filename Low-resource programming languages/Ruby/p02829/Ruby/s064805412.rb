def main(argv)
  a = gets.chomp.to_i
  b = gets.chomp.to_i

  puts '1' unless [a, b].include?(1)
  puts '2' unless [a, b].include?(2)
  puts '3' unless [a, b].include?(3)
end

if self.to_s == 'main' then
  main(ARGV)
end