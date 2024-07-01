n, a, b, c = gets.split.map{|t|t.to_s.to_i}
l = Array.new(n){ gets.to_s.to_i }
 
ans = n * 10 + 1000 * 3
[-1, 0, 1, 2].repeated_permutation(n) do |per|
  
  # a = b = c = 0
  mp = -10 * 3
  kadomatsu = [0] * 3
  l.each_with_index do |take, i|
    next if (idx = per[i]) < 0
    kadomatsu[idx] += take
    mp += 10
  end
  next if kadomatsu.include?(0)
  
  mp += (kadomatsu[0] - a).abs + (kadomatsu[1] - b).abs + (kadomatsu[2] - c).abs
  ans = mp if ans > mp
end

puts ans