h,w=gets.split.map(&:to_i)
ss=h.times.map{gets.chomp}
ans="Yes"
h.times do |i|
  w.times do |j|
    if ss[i][j]=="#"
      check=false
      check=true if j!=0 && ss[i][j-1]=="#"
      check=true if j!=w-1 && ss[i][j+1]=="#"
      check=true if i!=0 && ss[i-1][j]=="#"
      check=true if i!=h-1 && ss[i+1][j]=="#"
      if !check
        ans="No"
      end
    end
  end
end
puts ans
