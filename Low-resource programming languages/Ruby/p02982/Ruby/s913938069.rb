require 'complex'

n, d = gets.chomp.split(" ").map(&:to_i)
pts = []
c = 0
if n > 0 then
  n.times.map { pts.push(gets.chomp.split(" ").map(&:to_i).to_ary) }
  pts.each_with_index do |px, i|
    break if (pts.length - 1) == i 
    ((i + 1)..(pts.length - 1)).each do |j|
      py = pts[j]
      sum = 0
      (0..(d - 1)).each do |k|
        sum += (px[k] - py[k]).abs**2
      end
      x = Math.sqrt(sum)
      c += 1 if x.to_s =~ /\A[1-9][0-9]*\.0\z/
    end
  end
end
puts "#{c}"

