N = gets.chomp.to_i
lines = gets.chomp.split.map(&:to_i).sort.reverse

count = 0
(N-2).times do |i|
  a = lines[i]
  bclines =  lines[(i+1)..N].reverse
  bclines.each_with_index do |b, j|
    clines =  bclines[(j+1)..N]
    clines.each_with_index do |c, k|
      if a < b + c
        count += clines.length - k
        break
      end
    end
  end
end
puts count
