abs = $stdin.read.lines.map(&:chomp).tap{|s| s.shift}.map{|l| l.split(" ").map(&:to_i)}
sorted = abs.sort_by {|a,b| b}
t = 0
sorted.each do |a,b|
  t += a
  if t > b
    puts "No"
    exit
  end
end

puts "Yes"
