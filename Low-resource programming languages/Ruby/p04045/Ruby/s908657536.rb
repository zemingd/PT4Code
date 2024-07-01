n, _k = gets.chomp.split.map(&:to_i)
dstrs = gets.chomp.split.sort

loop do
  digits = n.to_s.split("")
  if digits.any? {|c| dstrs.include?(c)}
    next_diff = nil
    found = false
    digits.each_with_index do |c, i|
      if found
        next_diff -= c.to_i * 10**(digits.size - i - 1)
        next
      end
      if !found && dstrs.include?(c)
        next_diff = 10**(digits.size - i - 1)
        found = true
        next
      end
    end
    n += next_diff
    next
  end
  print n
end