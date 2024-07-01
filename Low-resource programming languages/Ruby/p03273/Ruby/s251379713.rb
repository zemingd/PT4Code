h,w = gets.chomp.split.map(&:to_i)
ary = []
h.times do
  ary << gets.chomp.split("")
end

ary.delete_if {|line| line.count('.')==line.length}
# p ary
if ary.length == 1
  ary.each do |line|
    # p "#"*line.count("#")
    ary = "#"*line.count("#")
  end
  # p ary
else
  ary = ary.transpose
end
if ary.class == Array
  ary.delete_if {|line| line.count('.')==line.length}
  ary = ary.transpose
  ary.each do |line|
    print(line.join)
    puts
  end
else
  puts ary
end

