def ascan; gets.split.map(&:to_i);end

gets;
m = gets.chomp.split.sort.uniq.size

puts ["Zero","One","Two","Three","Four"][m]