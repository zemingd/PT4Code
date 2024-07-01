def make_card(array)
  card = []
  card.push(array[0].chomp.split(" ").map(&:to_i))
  card.push(array[1].chomp.split(" ").map(&:to_i))
  card.push(array[2].chomp.split(" ").map(&:to_i))
  card
end

# ビンゴ開始
def start(array, card, result)
  res = []
  array[3].to_i.times do |i|
    res = check(card, array[3 + i].to_i, result)
  end
  p bingo?(res) ? 'yes' : 'no'
end

# 検索
def check(card, num, result)
  card.each_with_index do |row, i|
    row.each_with_index do |v, j|
      result[i][j] = num if v == num
    end
  end
  result
end

# ビンゴの判定
def bingo?(result)
  if (result[0][0] && result[0][1] && result[0][2]) ||
     (result[1][0] && result[1][1] && result[1][2]) ||
     (result[2][0] && result[2][1] && result[2][2]) ||
     (result[0][0] && result[1][0] && result[2][0]) ||
     (result[0][1] && result[1][1] && result[2][1]) ||
     (result[0][2] && result[1][2] && result[2][2]) ||
     (result[0][0] && result[1][1] && result[2][2]) ||
     (result[0][2] && result[1][1] && result[2][0])
    true
  else
    false
  end
end

result = [
  [nil, nil, nil],
  [nil, nil, nil],
  [nil, nil, nil]
]

array = gets.chomp.split("\n")
card = make_card(array)
start(array, card, result)