h, w = gets.split.map(&:to_i)
arr = h.times.map { gets.chomp.chars }
2.times do
  arr.delete_if { |s| s.all?('.') }
  arr = arr.transpose
end
puts arr.map(&:join)