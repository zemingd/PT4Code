rooms = Hash.new(0)

_ = gets
ARGF.each_line do |line|
  b, f, r, v = line.split.map(&:to_i)
  rooms["#{b}#{f}#{r}"] += v
end

(1..4).each do |b|
  (1..3).each do |f|
    nums = (1..10).map do |r|
      rooms["#{b}#{f}#{r}"]
    end
    puts nums.join("\s")
  end
  puts "#"*20
end