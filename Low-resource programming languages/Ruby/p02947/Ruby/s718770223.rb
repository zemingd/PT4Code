N=gets.to_i
S=N.times.map{gets.chomp.chars.sort.join("")}

ha = Hash.new(0)
S.each do |str|
  ha[str] += 1
end

ans=0
ha.each do |_, v|
  ans += v*(v-1)/2
end
p ans