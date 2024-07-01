def main(argv)
  n = gets.chomp.to_i
  
  if n % 2 == 0 then
    puts n.to_s
  else
    puts (n * 2).to_s
  end
end

if self.to_s === 'main' then
  main(ARGV)
end