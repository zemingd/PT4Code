h, w = gets.split.map(&:to_i)
trout = h.times.map { gets.chomp.chars }
2.times do
  trout.delete_if { |s| s.all?('.') }
  trout = trout.transpose
end
puts trout.map(&:join)