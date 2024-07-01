# グリッド
h, w = gets.chomp.split.map(&:to_i)
sa = []
h.times do
  sa.push(gets.chomp.chars)
end

sa.each_with_index do |row, row_index|
  row.each_with_index do |value, col_index|
    next if value == "."
    next if row_index > 0 && sa[row_index - 1][col_index] == "#"
    next if row_index < h-1 && sa[row_index + 1][col_index] == "#"
    next if col_index > 0 && sa[row_index][col_index - 1] == "#"
    next if col_index < w-1 && sa[row_index][col_index + 1] == "#"
    puts "No"
    exit
  end
end

puts "Yes"
