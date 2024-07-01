gets

n = 1
gets.chomp.split(" ").each do |str|
  a = str.to_i
  if a == 0
    puts "0"
    exit
  end
  n *= a
end

if n > 1e+18
  puts "-1"
  exit
end

puts n