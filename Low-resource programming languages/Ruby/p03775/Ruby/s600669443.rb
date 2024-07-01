n = gets.to_i

tmp = n**0.5

if (tmp - tmp.floor).zero?
  puts tmp.floor.to_s.length
  exit
end

tmp.floor.downto(1) do |x|
  next unless (n % x).zero?
  puts (n / x).to_s.length
  exit
end