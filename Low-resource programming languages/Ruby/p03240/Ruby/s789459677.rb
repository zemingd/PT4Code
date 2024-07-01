N=gets.to_i
x,y,h=N.times.map{gets.split.map &:to_i}.transpose
(0..100).each do |cx|
  (0..100).each do |cy|
    ch=[]
    N.times do |i|
      ch << h[i] + (x[i]-cx).abs + (y[i]-cy).abs
    end
    next unless ch.uniq.size == 1
    puts [cx, cy, ch[0]]*" "
    exit
  end
end
