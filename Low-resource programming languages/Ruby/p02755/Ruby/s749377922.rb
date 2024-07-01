a, b = gets.chop.split.map(&:to_i)

$ans = -1
1010.times do |i|
  if (i.to_f * 0.08).floor == a && (i.to_f * 0.10).floor == b
    return puts i
  end
end

puts $ans
