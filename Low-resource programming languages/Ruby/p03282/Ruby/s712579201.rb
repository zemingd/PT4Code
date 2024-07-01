s = gets.chomp
k = gets.chomp.to_i

XDAY = 5_000_000_000_000_000

sum = 0
s.chars.each do |c|
  case c
  when '1'
    sum += 1
  else
    sum += k + 1
  end
  if sum >= k
    puts c
    exit
  end
end
