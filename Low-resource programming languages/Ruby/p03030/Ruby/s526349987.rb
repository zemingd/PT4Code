N = gets.to_i
SP = N.times.map do |i|
  sp = gets.split + [i+1]
  [sp[0], sp[1].to_i * -1, i + 1]
end

SP.sort.each do |sp|
  puts sp[2]
end
