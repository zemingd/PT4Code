def integer_cards(cards, params)
  remain_card_count = cards.size
  card_count = cards.each_with_object(Hash.new { |h, k| h[k] = 0 }) { |i, h| h[i] += 1 }
  params.each do |count, num|
    cards << num
    card_count[num] += count
  end

  cards.uniq!
  cards.sort_by! { |n| n * -1 }
  sum = 0
  cards.each do |num|
    break if remain_card_count < 0
    count = card_count[num]
    sum += [remain_card_count, count].min * num
    remain_card_count -= count
  end

  sum
end

n, m = gets.split.map(&:to_i)
cards = gets.split.map(&:to_i)
params = []
m.times do 
  params << gets.split.map(&:to_i)
end

puts integer_cards(cards, params)