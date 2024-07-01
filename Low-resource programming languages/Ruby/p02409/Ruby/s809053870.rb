n = gets.to_i
bi = []
4.times do
  bi << Array.new(3).map{Array.new(10,0)}
end
n.times do
  b,f,r,v = gets.split(" ").map(&:to_i)
  bi[b-1][f-1][r-1] += v
end
4.times do |i|
  3.times do |j|
    print " "
    puts bi[i][j].join(" ")
    puts "#"*20 if (j == 2)&&(i < 3)
  end
end