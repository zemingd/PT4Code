def main(argv)
  (x, a, b) = STDIN.gets.chomp.split(' ').map(&:to_i)
  if b <= a then
    STDOUT.puts 'delicious'
  elsif b <= x + a then
    STDOUT.puts 'safe'
  else
    STDOUT.puts 'dangerous'
  end
end

if self.to_s == 'main' then
  main(ARGV)
end