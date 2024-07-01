_ = gets.to_i
mons = readline.split(' ').map(&:to_i)
hero = readline.split(' ').map(&:to_i)

count = 0
hero.each_with_index do |h, i|
  count += [mons[i], h].min
  if h > mons[i]
    yoryoku = h - mons[i]
    count += [mons[i + 1], yoryoku].min
    mons[i + 1] = mons[i + 1] - yoryoku
  end
end

p count
