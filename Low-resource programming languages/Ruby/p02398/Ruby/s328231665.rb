
while true
  d = gets.chomp.split
  a,b,c = d.map(&:to_i)
  count = 0
  count_add = 0

  for x in a..b
    if ( d[2].to_i % x.to_i ) == 0
      count += 1
    end
  end

break
end

puts count
