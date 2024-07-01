n = STDIN.gets().to_i
h = STDIN.gets().split(" ")

min = 0
ret = 0
h.each do |a|
  if a.to_i >= min
    ret += 1
    min = a.to_i
  end
end

puts ret
