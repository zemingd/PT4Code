N, W = gets.split.map(&:to_i)
w0, v0 = gets.split.map(&:to_i)
d = {"0" => 0}
d[w0.to_s] = v0 if w0 <= W

m = d.max{ |a1, a2| a1[1] <=> a2[1]}[1]

(N-1).times do
  w, v = gets.split.map(&:to_i)

  newd = d.dup
  d.map do |dw, dv|
    dw = dw.to_i
    if dw + w <= W && dv + v > dv
      m = [dv + v, m].max
      newd[(dw + w).to_s] = dv + v
    else
      nil
    end
  end
  d = newd
end

puts m