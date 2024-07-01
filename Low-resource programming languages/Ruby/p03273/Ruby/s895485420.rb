h = gets.split.map(&:to_i)[0]
arr = h.times.map { gets.chomp.chars }
2.times do
  arr.delete_if { |s| s.all?('.') }
  arr = arr.transpose
end
puts arr.map(&:join)