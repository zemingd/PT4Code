n, _k = gets.chomp.split.map(&:to_i)
dstrs = gets.chomp.split.sort

loop do
  if n.to_s.split("").any? {|c| dstrs.include?(c)}
    n += 1
    next
  end
  print n
end