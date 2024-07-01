n, K = gets.split.map(&:to_i)
hate_numbers = gets.split.map
include_hate = ->(hate_number) { n.to_s.include?(hate_number) }

loop do
  unless hate_numbers.any?(&include_hate)
    puts n
    break
  end

  n += 1
end