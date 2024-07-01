def min(a,b); a < b ? a : b; end
N = gets.to_i
R = Array.new(10, 0)
A = gets.split.map(&:to_i)
A.each do |a|
  R[min(a / 400, 8)] += 1
end
m = 8.times.count{|r| R[r] > 0 }
puts "#{m > 0 ? m : 1} #{m+R[8])}"