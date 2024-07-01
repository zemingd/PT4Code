mrr = []
frr = []
rrr = []
loop do
  m, f, r = gets.split.map(&:to_i)
  break if m == -1 && f == -1 && r == -1
  mrr.push(m)
  frr.push(f)
  rrr.push(r)
end
0.upto(mrr.size - 1) do |i|
  sum = mrr[i] + frr[i]
  puts 'F' if mrr[i] == -1 || frr[i] == -1
  case sum
  when 80..100
    puts 'A'
  when 65..79
    puts 'B'
  when 50..64
    puts 'C'
  end
  if sum >= 30 && sum < 50 && rrr[i] >= 50
    puts 'C'
  elsif sum >= 30 && sum < 50
    puts 'D'
  elsif sum < 30
    puts 'F'
  end
end

