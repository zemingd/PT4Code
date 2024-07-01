input = gets.chomp
n = input.to_i
ans = 0
(1..input.length).each do |num_digits|
  %w[3 5 7].repeated_permutation(num_digits) do |s|
    next unless %w[3 5 7].all? { |x| s.include?(x) }

    ans += 1 if s.join.to_i <= n
  end
end
puts ans