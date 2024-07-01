input = <<'EOS'
84 97 66
79 89 11
61 59 7
7
89
7
87
79
24
84
30
EOS

# ビンゴカード
def make_card(array)
  card = []
  card.push(array[0].chomp.split(" ").map(&:to_i))
  card.push(array[1].chomp.split(" ").map(&:to_i))
  card.push(array[2].chomp.split(" ").map(&:to_i))
  card
end

# ビンゴ開始
def start(array, result)
  res = []
  card = make_card(array)

  array[3].to_i.times do |i|
    res = check(card, array[3 + i].to_i, result)
  end
  print(bingo?(res) ? 'Yes' : 'No')
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

array = readlines.map(&:chomp)
start(array, result)