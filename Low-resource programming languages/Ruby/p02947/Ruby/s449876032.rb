N = gets.to_i
S = N.times.map { gets.chomp }

Sh = []
S.each do |s|
  aryh = Hash.new(0)
  s.chars.each do |c|
    aryh[c] += 1
  end
  Sh << aryh
end

cnt = 0
N.times do |n|
  cnt += Sh[n+1..N-1].select { |sh| sh == Sh[n] }.count
end

puts cnt