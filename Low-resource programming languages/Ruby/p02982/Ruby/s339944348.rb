n,d=gets.split.map(&:to_i)
dots = []
n.times do
  dots << gets.split.map(&:to_i)
end
ans = 0
n.times do |i|
  ((i+1)...n).each do |j|
    dist = 0
    d.times do |di|
      dist += (dots[i][di]-dots[j][di])**2
    end
   ans += 1 if dist**(0.5) == (dist**(0.5)).to_i
  end
end

p ans