s = gets.chomp.split('').map(&:to_i)
k = gets.chomp.to_i
ss = s.map { |e| [e, (5*10**15) * Math.log10(e) + 1] }
sum = 0
ss.each do |d|
  sum += d.last
  if sum >= k
    puts d.first
    exit 0
  end
end
