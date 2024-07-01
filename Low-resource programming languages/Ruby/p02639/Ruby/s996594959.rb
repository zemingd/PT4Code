XS = gets.split.map(&:to_i)

XS.each.with_index(1) { |x, i|
  if x == 0
    puts i
    exit
  end
}
