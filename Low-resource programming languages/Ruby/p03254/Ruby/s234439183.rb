_n, x = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
as.sort!.map! { |a|
  if x >= a
    x -= a
    1
  else
    0
  end
}
num = as.inject(:+)
num -= 1 if (as.last == 1 && x != 0)
puts num
