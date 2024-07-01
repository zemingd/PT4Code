n = gets.to_i
t,a = gets.split.map(&:to_i)
comp = Float::INFINITY
ans = 1
h = gets.split.map{|u| t-u.to_i*0.006}
h.each_with_index do |k,idx|
  if comp > (k-a).abs
    comp = (k-a).abs
    ans = idx+1
  end
end
puts ans
