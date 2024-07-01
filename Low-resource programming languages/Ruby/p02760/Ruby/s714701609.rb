card = Array.new(3) { Array.new(3) }
bingo = Array.new(3) { Array.new(3, false) }

3.times do |i|
  a1, a2, a3 = gets.split.map(&:to_i)
  card[i][0] = a1
  card[i][1] = a2
  card[i][2] = a3
end

# p card

N = gets.to_i

N.times do |i|
  b = gets.to_i
  card.each_with_index do |c, i|
    c.each_with_index do |a, j|
      if a == b
        bingo[i][j] = true
      end
    end
  end
end

# p bingo

ok = false
3.times do |i|
  is_bingo = bingo[i][0] == true && bingo[i][1] == true && bingo[i][2] == true
  if is_bingo
    ok = true
    break
  end
end

if ok
  puts "Yes"
  exit
end

3.times do |i|
  is_bingo = bingo[0][i] == true && bingo[1][i] == true && bingo[2][i] == true
  if is_bingo
    ok = true
    break
  end
end

if ok
  puts "Yes"
  exit
end

ok = bingo[0][0] == true && bingo[1][1] == true && bingo[2][2] == true
if ok
  puts "Yes"
  exit
end

ok = bingo[0][2] == true && bingo[1][1] == true && bingo[2][0] == true


if ok
  puts "Yes"
else
  puts "No"
end
