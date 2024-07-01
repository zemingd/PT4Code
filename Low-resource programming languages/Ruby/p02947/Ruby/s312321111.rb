n = gets.to_i
s = readlines.map {|i| i.chomp}

h = Hash.new(0)
s.map do |ss|
  h[ss.chars.sort.to_s]+=1
end

count = 0
h.each_value do |v|
  count += (1..(v-1)).inject(:+) if v>=2
end

puts count