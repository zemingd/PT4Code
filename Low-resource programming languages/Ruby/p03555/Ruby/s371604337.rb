def main(argv)
  s = STDIN.gets.chomp
  t = STDIN.gets.chomp
  if s == t.reverse then
    STDOUT.puts 'YES'
  else
    STDOUT.puts 'NO'
  end
end

if self.to_s == 'main' then
  main(ARGV)
end