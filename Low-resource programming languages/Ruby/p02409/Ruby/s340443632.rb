n = gets.chomp.to_i

university = []
4.times do |b|
  university[b] = []
  3.times do |f|
    university[b][f] = []
    10.times do |r|
      university[b][f][r] = 0
    end
  end
end


n.times do
  b, f, r, v = gets.chomp.split.map(&:to_i)
  university[b-1][f-1][r-1] += v
end


i = 4
university.each do |building|
  building.each do |floor|
    puts ' ' + floor.join(' ')
  end
  puts '#' * 20 unless (i -= 1).zero?
end