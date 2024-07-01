require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N = gets_i
a_list = gets_i_list

colors = Array.new(8){false}
free_count = 0

a_list.each do |a|
  if       1 <= a && a <=  399
    colors[0] = true
  elsif  400 <= a && a <=  799
    colors[1] = true
  elsif  800 <= a && a <= 1199
    colors[2] = true
  elsif 1200 <= a && a <= 1599
    colors[3] = true
  elsif 1600 <= a && a <= 1999
    colors[4] = true
  elsif 2000 <= a && a <= 2399
    colors[5] = true
  elsif 2400 <= a && a <= 2799
    colors[6] = true
  elsif 2800 <= a && a <= 3199
    colors[7] = true
  else
    free_count += 1
  end
end

color_count = colors.count(true)

min = [color_count, free_count].max
max = [color_count + free_count, 8].min

puts [min, max].join(" ")  
