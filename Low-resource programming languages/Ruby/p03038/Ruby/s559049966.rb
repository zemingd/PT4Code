n, m = gets.split.map(&:to_i)
cards = gets.split.map(&:to_i).sort
insts = m.times.map { gets.split.map(&:to_i) }

insts = insts.sort_by(&:last).reverse

lambda do
  i = 0
  insts.each do |b, c|
    ulimit = [i + b - 1, cards.size-1].min
    i.upto(ulimit) do |j|
      if cards[j] >= c
        return
      else
        cards[j] = c
      end
    end
    i += b
  end
end.()

puts cards.inject(:+)
