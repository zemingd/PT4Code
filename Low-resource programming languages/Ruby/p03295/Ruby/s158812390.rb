n, m = gets.split.map(&:to_i)

segments = Array.new()

(1..m).each do |index|
  a, b = gets.split.map(&:to_i)
  segment = [a + 1, b]
  segments.push(segment)
end

segments.sort_by! {|a, b| b}

last = -1
many = 0

segments.each do |segment|
  if last < segment[0]
    last = segment[1]
    many += 1
  end
end

puts many