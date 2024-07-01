def integer_cards(cards, params)
  card_keys = cards.uniq.sort
  card_count = cards.each_with_object(Hash.new { |h, k| h[k] = 0 }) { |i, h| h[i] += 1 }

  param_keys = []
  param_count = Hash.new { |h, k| h[k] = 0 }
  params.each { |c, k| param_keys << k; param_count[k] += c }
  param_keys.sort_by! { |n| n * -1 }

  card_key_idx = 0
  param_keys.each do |param_key|
    while ((card_key = card_keys[card_key_idx]) < param_key) && param_count[param_key] > 0 && card_key_idx < cards.size
      replace_count = [card_count[card_key], param_count[param_key]].min
      card_count[card_key] -= replace_count
      param_count[param_key] -= replace_count

      card_keys << param_key unless card_count.key?(param_key)
      card_count[param_key] += replace_count

      if card_count[card_key].zero?
        card_key_idx += 1
      end
    end
  end

  sum = 0
  card_key_idx.upto(card_keys.size - 1) do |i|
    card_count[card_keys[i]]
    sum += card_keys[i] * card_count[card_keys[i]]
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