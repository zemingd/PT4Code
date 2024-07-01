class Parallelism
  def initialize(x1, y1, x2, y2, x3, y3, x4, y4)
    @v1 = [x2 - x1, y2 - y1]
    @v2 = [x4 - x3, y4 - y3]
  end

  def parallel?
    (@v1[1] / @v1[0]) == (@v2[1] / @v2[0]) ? true : false
  end

end

num = gets.to_i

num.times do
  line = gets
  parallism = Parallelism.new(*(line.chomp.split(" ").map{|n| n.to_f}))
  puts parallism.parallel? ? "YES" : "NO"
end