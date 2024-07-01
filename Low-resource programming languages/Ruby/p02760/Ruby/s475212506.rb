card = []
3.times do
  card << gets.split.map(&:to_i)
end

N = gets.to_i
N.times do
  t = gets.to_i
  card.each_with_index do |c, i|
    c.each_with_index do |v, j|
      card[i][j] = 0 if v == t
    end
  end
end

def col_check(card)
  card.any? do |c|
    c.all? do |v|
      v == 0
    end
  end
end

exists = col_check(card)
if exists
  print "Yes"
  exit
end

card = card.transpose
exists = col_check(card)
if exists
  print "Yes"
  exit
end

if card[0][0] == 0 && card[1][1] == 0 && card[2][2] == 0
  print "Yes"
  exit
end

if card[0][2] == 0 && card[1][1] == 0 && card[2][0] == 0
  print "Yes"
  exit
end

print "No"