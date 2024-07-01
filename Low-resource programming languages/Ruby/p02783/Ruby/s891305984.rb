h,a = gets.split(' ').map(&:to_i)
d = h/a
d.upto(10000) do |n|
  break puts 1 if h <= a
  break puts n if h <= n*a
end