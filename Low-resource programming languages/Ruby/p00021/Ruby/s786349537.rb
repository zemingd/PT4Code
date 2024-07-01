# coding : utf-8

class Parallelism
  def solve
    n = gets.chomp.to_i
    n.times do
      x1, y1, x2, y2, x3, y3, x4, y4 =
        gets.chomp.split.map {|s| s.to_f}
      #p x1, y1, x2, y2, x3, y3, x4, y4
      ab = (y2 - y1) / (x2 - x1) rescue Float::INFINITY
      cd = (y4 - y3) / (x4 - x3) rescue Float::INFINITY
      if ab == cd then
        puts "YES"
      else
        puts "NO"
      end
    end
  end
end

Parallelism.new.solve