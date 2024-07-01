N = gets.to_i
H = gets.split.map(&:to_i)

ans = 1
max_h = H[0]

H[1..-1].each do |h|
  if max_h <= h
    max_h = h
    ans += 1
  end
end


puts ans
