N, W = gets.split.map(&:to_i)
w0, v0 = gets.split.map(&:to_i)
d = [[0, 0]]
d << [w0, v0] if w0 <= W

m = d.max{ |a1, a2| a1[1] <=> a2[1]}[1]

(N-1).times do
  w, v = gets.split.map(&:to_i)

  t = d.map do |arr|
    if arr[0] + w <= W
      m = [arr[1] + v, m].max
      [arr[0] + w, arr[1] + v]
    else
      nil
    end
  end.compact
  d.concat(t)
end

puts m