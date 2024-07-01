def avg(px)
  (1 + px) / 2r
end

_, k = gets.split.map(&:to_i)

dices = gets.split.map(&:to_i)

champ = 0
cand = nil

dices.each_cons(k) do |sub_dices|
  y = sub_dices.inject(:+)

  if champ < y
    champ = y
    cand = sub_dices
  end
end

x = cand.map{|d| avg(d) }.inject(:+)

puts x.to_f