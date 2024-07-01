rooms = Hash.new(0)

def report(rooms)
  (1..4).each do |b|
    (1..3).each do |f|
      nums = (1..10).map do |r|
        rooms["#{b}#{f}#{r}"]
      end
      print "\s"
      puts nums.join("\s")
    end
    puts "#" * 20 unless b == 4
  end
  puts
end

_ = gets
ARGF.each_line do |line|
  b, f, r, v = line.split.map(&:to_i)
  rooms["#{b}#{f}#{r}"] += v
end

report(rooms)