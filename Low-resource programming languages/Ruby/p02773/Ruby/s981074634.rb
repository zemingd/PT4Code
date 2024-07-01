n = gets.to_i

h = Hash.new(0)

n.times do
  s = gets.strip
  h[s] += 1
end

sorted = h.sort_by{|k, v| -v}

max = nil
keys = []

sorted.each do |k, v|
  max = v if max.nil?
  if max == v
    keys << k
  else
    break
  end
end

puts keys.sort