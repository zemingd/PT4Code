_n, m = gets.chomp.split(' ').map(&:to_i)

list = []
hash = {}
m.times.each do
  pi, yi = gets.chomp.split(' ').map(&:to_i)
  if hash.key?(pi)
    hash[pi] << yi
  else
    hash[pi] = [yi]
  end
  list << [pi, yi]
end

sorted = {}

list.each do |pi, yi|
  unless sorted[pi]
    hash[pi] = hash[pi].sort.map.with_index(1) do |x, i|
      [x, i]
    end.to_h
    sorted[pi] = true
  end
  idx = hash[pi][yi]
  puts "#{format('%06d', pi)}#{format('%06d', idx + 1)}"
end

