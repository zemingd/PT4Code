n = gets.to_i
work = Array.new(n).map{Array.new(2,0)}
n.times{|i| work[i] = gets.split.map(&:to_i)}
work.sort! {|a,b| a[1] <=> b[1]}
time = 0
for i in 0..n-1
  time += work[i][0]
  if time > work[i][1]
    puts "No"
    exit
  end
end
puts "Yes"
