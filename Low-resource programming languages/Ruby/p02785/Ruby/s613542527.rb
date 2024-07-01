n, k = readline.split(' ').map(&:to_i)
h = readline.split(' ').map(&:to_i)
rh = h.sort { |x,y| y <=> x }
total = 0

if rh[k] != nil
  rh[k..-1].each do |h|
    total += h
  end
end


puts total