N, L = gets.split.map(&:to_i)

value = []
buf = []

(1..N).each do |i|
  data = L + i - 1
  value << data
  buf << data.abs
end

value.delete_at(buf.index(buf.min))
puts value.inject(:+)
