N, M = gets.split.map(&:to_i)
CARDS = M.times.map { gets.split.map(&:to_i) }

RANGE = { from: 1, to: N }

def exists_card?
  CARDS.each.all? do |from, to|
    if (from >= RANGE[:from] && to <= RANGE[:to])
      RANGE[:from] = from
      RANGE[:to] = to
    elsif (from >= RANGE[:from] && from <= RANGE[:to])
      RANGE[:from] = from
    elsif (to >= RANGE[:from] && to <= RANGE[:to])
      RANGE[:to] = to
    else
      false
    end
  end
end

cards_num = exists_card? ? (RANGE[:to] - RANGE[:from] + 1) : 0
puts cards_num