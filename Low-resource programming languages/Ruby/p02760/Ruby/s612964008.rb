bingo = []
numbers = []
ans = 'No'

3.times do
  bingo << gets.split.map(&:to_i)
end

n = gets.to_i
n.times do
  numbers << gets.to_i
end

bingo.each do |row|
  flag = true
  row.each do |num|
    unless numbers.include?(num)
      flag = false
    end
  end
  if flag
    ans = 'Yes'
  end
end

columns = []
(0..2).each do |i|
  box = []
  bingo.each do |row|
    box << row[i]
  end
  columns << box
end

columns.each do |col|
  flag = true
  col.each do |num|
    unless numbers.include?(num)
      flag = false
    end
  end
  if flag
    ans = 'Yes'
  end
end

slash_flag = true
slash = [[bingo[0][0], bingo[1][1], bingo[2][2]], [bingo[0][2], bingo[1][1], bingo[2][0]]]
slash.each do |s|
  slash_flag = true
  s.each do |num|
    unless numbers.include?(num)
      slash_flag = false
    end
  end
  if slash_flag
    ans = 'Yes'
  end
end

puts ans
