
def main()
  n = gets.chomp.to_i
  x = gets.chomp.split(' ').map(&:to_i)
  table = Array.new(8,0)
  free = 0
  for i in 0..n-1
    case x[i]
    when 1..399
      table[0] = 1
    when 400..799
      table[1] = 1
    when 800..1199
      table[2] = 1
    when 1200..1599
      table[3] = 1
    when 1600..1999
      table[4] = 1
    when 2000..2399
      table[5] = 1
    when 2400..2799
      table[6] = 1
    when 2800..3199
      table[7] = 1
    else
      free = free + 1
    end
  end
  ans_min = [table.select{|t| t == 1}.size, 1].max
  ans_max = table.select{|t| t == 1}.size + free
  puts "#{ans_min} #{ans_max}"
end

main()