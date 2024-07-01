N,*S = $<.map(&:to_i)
T = S.each_with_object(Hash.new(0).tap{|h| h[0] = 1}) do |s,o|
  o.keys.each do |k|
    o[k + s] += 1
  end
end
puts T.keys.reject{|v| v % 10 == 0 }.max || 0


