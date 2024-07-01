n=gets.to_i
x=Array.new(4){Array.new(3){Array.new(10){0}}}
while line=gets
  (b,f,r,v)=line.split().map(&:to_i)
  x[b-1][f-1][r-1] += v
end
x.each_with_index do |bb,i|
  bb.each do |ff|
    puts " "+ff.join(" ")
  end
  puts "####################" if i != 3
end