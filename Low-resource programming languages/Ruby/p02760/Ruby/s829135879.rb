card = []
3.times do
    card << gets.chomp.split(' ').map(&:to_i)
end
n = gets.to_i
number = []
n.times do
  number.push(gets.to_i)
end

count = 0
while count < n 
  i = 0
  j = 0
  while i < 3
    while j < 3
      if card[i][j] == number[count]
        card[i][j] = 0
      end
      j += 1
    end
    j = 0
    i += 1
  end
  count += 1
end

ans = "No"

i = 0
while i < 3
  if card[i] == [0, 0, 0]
    ans = "Yes"
  end
  i += 1
end

card_transpose = card.transpose
j = 0
while j < 3
  if card_transpose[j] == [0, 0, 0]
    ans = "Yes"
  end
  j += 1
end

card_ltor = [card[0][0], card[1][1], card[2][2]]
card_rtol = [card[0][2], card[1][1], card[2][0]]

if card_ltor == [0, 0, 0] || card_rtol == [0, 0, 0]
  ans = "Yes"
end

p ans


