def main(argv)
  (a, b) = gets.chomp.split(' ').map(&:to_i)
  
  if a <= 5 then
    puts 0.to_s
  elsif a <= 12 then
    puts (b / 2).to_s
  else
    puts b.to_s
  end
end

if self.to_s === 'main' then
  main(ARGV)
end