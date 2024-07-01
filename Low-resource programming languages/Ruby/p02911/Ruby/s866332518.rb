a = gets.strip.split.map(&:to_i)
N = a[0]
K = a[1]
Q = a[2]
A = Q.times.map{gets.to_i}

POINTS = Array.new(N, 0)

A.each do |i|
  POINTS[i-1] += 1
end

POINTS.each do |point|
  if K-Q+point > 0
    puts "Yes"
  else
    puts "No"
  end
end
