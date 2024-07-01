n = gets.to_i
ss = n.times.map { gets.chomp }.sort
count = {}
ss.each do |s|
  count[s] ||= 0
  count[s] += 1
end
m = count.values.max
ss.each do |s|
  if count[s] == m
    puts s
    count[s] = 0
  end
end