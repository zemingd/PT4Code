rate = STDIN.gets

if rate.to_i < 1200
  STDOUT.puts "ABC"
elsif rate.to_i < 2800
  STDOUT.puts "ARC"
else
  STDOUT.puts "AGC"
end
