io = STDIN
w,h,n=io.gets.chomp.split.map(&:to_i)
ar=Array.new(w){Array.new(h){true}}
n.times do
  x,y,a=io.gets.chomp.split.map(&:to_i)
  case a
  when 1
    (0..(x.pred)).each do |i|
      h.times {|j|ar[i][j]=false}
    end
  when 2
    (x...w).each do |i|
      h.times {|j|ar[i][j]=false}
    end
  when 3
    (0..(y.pred)).each do |j|
      w.times {|i|ar[i][j]=false}
    end
  when 4
    (y...h).each do |j|
      w.times {|i|ar[i][j]=false}
    end
  end
end
p ar.flatten.select{|a|a==true}.size