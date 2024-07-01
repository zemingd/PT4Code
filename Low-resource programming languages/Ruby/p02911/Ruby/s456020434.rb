n, k, q = gets.split(' ').map(&:to_i)
seikaisha = []
q.times do
  seikaisha << gets.to_i
end

points = Array.new(n,0)
seikaisha.map do |s|
  points[s-1] ? points[s-1] += 1 : points[s-1] = 1
end

goukakuline = q - k + 1
points.each do |p|
  if (!p || p < goukakuline)
    puts 'No'
  else
    puts 'Yes'
  end
end
