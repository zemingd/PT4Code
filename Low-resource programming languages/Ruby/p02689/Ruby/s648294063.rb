N, M = gets.chomp.split.map(&:to_i)
tenboudai_hyoukou = gets.chomp.split.map(&:to_i)
tenboudai = N.times.map do
  []
end

M.times.each do
  a, b = gets.chomp.split.map(&:to_i)
  tenboudai[a - 1].push b
  tenboudai[b - 1].push a
end

count = 0

tenboudai.each_with_index do |ways, index|
  if ways.empty?
    count += 1
    # puts 'empty'
    next
  end
  ways.uniq!
  # p ways
  count += 1 if ways.all? do |point|
    tenboudai_hyoukou[index] > tenboudai_hyoukou[point - 1]
  end
  # p [index, count]
end

puts count
