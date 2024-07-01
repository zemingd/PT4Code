N, K = gets.split.map(&:to_i)
ans = (1 .. N).inject(0.to_f) do |s, n|
  r = (0 .. 20).bsearch{|c| n * (1 << c) >= K }
  s + (1.to_f / N) * (1.to_f / (1 << r))
end
puts ans

