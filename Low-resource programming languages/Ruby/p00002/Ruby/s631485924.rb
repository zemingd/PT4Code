loop do
  data = gets
  return unless data

  a, b = data.split(nil).map(&:to_i)

  puts (a + b).to_s.length
end