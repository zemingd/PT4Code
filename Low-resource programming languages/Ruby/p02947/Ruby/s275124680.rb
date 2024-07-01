N = gets.to_i
ss = N.times.map { gets.chomp.split("").sort.join("") }
count = 0
ss.uniq.each do |pattern|
  dup_num = ss.count(pattern)
  if dup_num > 1
    count += (dup_num * (dup_num-1))/2
  end
end
puts count
