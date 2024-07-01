#!/usr/bin/env ruby

@h, @w = gets.strip.split.map(&:to_i)
@s = @h.times.map { gets.strip.split('') }

def paintable?(row_i, col_i)
  (col_i - 1 >= 0  && @s[row_i][col_i - 1] == '#') \
  || (row_i - 1 >= 0 && @s[row_i - 1][col_i] == '#') \
  || (col_i + 1 < @w && @s[row_i][col_i + 1] == '#') \
  || (row_i + 1 < @h && @s[row_i + 1][col_i] == '#')
end

@s.each_with_index do |row, row_i|
  row.each_with_index do |col, col_i|
    if col == '#' && !paintable?(row_i, col_i) then
      puts "No"
      exit
    end
  end
end
puts 'Yes'
