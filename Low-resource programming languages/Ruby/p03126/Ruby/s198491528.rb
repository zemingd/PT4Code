gets

ans = STDIN.each_line.map do |line|
  arr = line.split.map(&:to_i)
  arr.shift
  arr
end.reject(&:empty?).inject((1..30).to_a) do |memo, item|
  memo & item
end.size

puts ans
