n = gets.to_i
m = Array.new(4){Array.new(3){Array.new(10,0)}}

n.times do
  b,f,r,v = gets.split.map(&:to_i)
  m[b-1][f-1][r-1] += v
end

puts m.map{|x| x.map{|y| ' '+y.join(' ')}.join("\n")}.join("\n"+"#"*20+"\n")