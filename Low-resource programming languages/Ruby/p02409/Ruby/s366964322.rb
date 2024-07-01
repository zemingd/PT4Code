list = Array.new(4).map{Array.new(3).map{Array.new(10,0)}}
n  = gets.chomp.to_i

n.times do
  b,f,r,v = gets.chomp.split(" ").map(&:to_i)
  list[b-1][f-1][r-1] = v
end

list.each_with_index do |b,i|
  b.each do |f|
    puts " " + f.join(" ")
  end
  puts "#"*20 if i != b.size
end