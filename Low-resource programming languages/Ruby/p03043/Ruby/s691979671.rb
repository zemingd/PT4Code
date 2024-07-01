line = gets.split
qN = line.first.to_i
qK = line.last.to_i

rs = []

1.upto(qN) do |i|
  log = Math.log2(qK.to_f/i)
  #p log
  if log.infinite? || log <= 0
    rs << Rational(1, qN)
    next
  end
  win_times = log.ceil
  #puts "#{i}: 1/#{2**win_times}, to: #{qK.to_f/i},  L:#{log}"
  rs << Rational(1,2 ** win_times) * Rational(1, qN)
end

#p rs

sum = rs.reduce{|a, b|
  a + b
}

#p sum

puts sum.to_f
