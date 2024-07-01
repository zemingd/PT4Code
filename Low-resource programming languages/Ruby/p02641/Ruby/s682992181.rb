X, N = gets.split.map(&:to_i)
S = Array.new(102){|i| (X - i).abs }
gets.split.map(&:to_i).each do |x|
  S[x] = Float::INFINITY
end
puts (0 .. 101).min_by{|i| S[i] }

