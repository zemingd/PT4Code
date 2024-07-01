N, K = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
        .group_by { |x| x }
        .map { |k, v| v.size }
        .sort { |a, b| b <=> a }

if a.size <= K
  puts 0
else
  puts a[K..-1].inject(0, &:+)
end
