def transpose(trout)
  h = trout.size
  w = trout[0].size
  ret = Array.new(w) { Array.new(h) }
  w.times do |i|
    h.times do |j|
      ret[i][j] = trout[j][i]
    end
  end
  ret
end

h, w = gets.split.map(&:to_i)
trout = h.times.map { gets.chomp.chars }
2.times { trout = transpose(trout.find_all { |s| !s.all?('.') }) }
trout.each { |s| puts s.join }