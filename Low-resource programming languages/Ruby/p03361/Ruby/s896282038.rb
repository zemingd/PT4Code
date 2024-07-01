# グリッド
h, w = gets.chomp.split.map(&:to_i)
sa = []
h.times do
  sa.push(gets.chomp.chars)
end

grid_r = [-1, 0, 0, 1]
grid_c = [0, -1 ,1, 0]
sa.each_with_index do |row, row_index|
  row.each_with_index do |value, col_index|
    drawable = false
    next if value == "."
    grid_c.length.times do |i|
      # 枠外
      t_r = grid_r[i] + row_index
      t_c = grid_c[i] + col_index
      next if t_r < 0 or t_r >=h
      next if t_c < 0 or t_c >=h
      # 枠内
      if sa[t_r][t_c] == "#"
        drawable = true
        break
      end
    end
    unless drawable
      puts "No"
      exit
    end
  end
end

puts "Yes"
