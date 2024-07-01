n = gets.strip.to_i
colors = Array.new(n)
colors[0] = true
table = Array.new(n).map{Array.new(n)}

(1...n).each do |i|
  u, v, w = gets.strip.split(' ').map(&:to_i)
  u -= 1
  v -= 1
  table[u][v] = w
  table[v][u] = w
end

search_stack = [0]
while !search_stack.empty?
  row_index = search_stack.shift
  (0..n).each do |col_index|
    # puts "(#{row_index}, #{col_index})"
    if !table[row_index][col_index] || !colors[col_index].nil? then
      # puts "next!"
      next
    end

    if table[row_index][col_index] % 2 == 0 then
      # puts "colors[#{col_index}] = #{colors[row_index]}"
      colors[col_index] = colors[row_index]
    else
      # puts "colors[#{col_index}] = #{!colors[row_index]}"
      colors[col_index] = !colors[row_index]
    end
    search_stack.push(col_index)
    break if colors.all? { |c| !c.nil? }
  end
  break if colors.all? { |c| !c.nil? }
end

puts colors.map { |c| c ? 0 : 1 }
