loop do
  s = gets

  break unless s

  n = s.to_i

  cnt = 0
  10.times do |a| ; 10.times do |b| ; 10.times do |c| ; 10.times do |d|
    cnt += 1 if a+b+c+d == n
  end ; end ; end ; end

  puts cnt
end