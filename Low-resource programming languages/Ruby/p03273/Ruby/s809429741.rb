# https://atcoder.jp/contests/abc107/tasks/abc107_b



H, W = gets.split.map(&:to_i)
ass = Array.new(H) { gets.chomp.chars }

ng_columns = []
W.times do |j|
  ng_columns << j if ass.map{|row| row[j]}.join == '.' * H
end

ass.each_with_index do |row, i|
  next if row.join == '.' * W
  ans_row = ''
  row.each_with_index do |elm, j|
    ans_row << elm unless ng_columns.include?(j)
  end
  puts ans_row
end
