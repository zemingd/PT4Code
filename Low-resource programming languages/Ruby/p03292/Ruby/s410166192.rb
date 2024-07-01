i = gets.chomp.split(' ').map(&:to_i)
result = []

for p in 0..(i.length-1)
  for q in (p+1)..(i.length-1)
    result << (i[p]-i[q]).abs
  end
end

result.sort!{ |i, j| i <=> j }.reverse!
puts result[0]