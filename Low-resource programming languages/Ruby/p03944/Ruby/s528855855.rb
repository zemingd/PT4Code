def blacken(x, y, a)
  case a
  when 1 then
    # 0-x までを黒くする
    @floar = @floar.transpose.each_with_index{|row, i| 
        row.fill(1) if i < x
    }.transpose
  when 2 then
    @floar = @floar.transpose.each_with_index{|row, i| 
        row.fill(1) if i >= x
    }.transpose
  when 3 then
    @floar = @floar.each_with_index{|row, i| 
        row.fill(1) if i < y
    }
  when 4 then
    @floar = @floar.each_with_index{|row, i| 
        row.fill(1) if i >= y
    }
  else
  end
end


W, H, N = gets.chomp.split(" ").map(&:to_i)
x = []
y = []
a = []
N.times do |n|
  x[n], y[n], a[n] = gets.chomp.split(" ").map(&:to_i)
end
@floar = Array.new(H, Array.new(W,0))

N.times do |n|
  blacken(x[n], y[n], a[n])
end
p @floar.flatten.count(0)