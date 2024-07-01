vec = []

loop do
  h, w = gets.split.map(&:to_i)
  break if h.zero? && w.zero?

  vec << [h, w]
end

vec.each do |v|
  h = v[0]
  w = v[1]

  h.times do
    puts '#' * w
  end

  puts ''
end

