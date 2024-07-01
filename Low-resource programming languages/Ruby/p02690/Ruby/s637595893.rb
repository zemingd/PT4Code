x = gets.to_i
e = 1 / 5.0

1.upto(10**9) do |a|
  tmp = (a**5 - x)
  b = (tmp.abs)**e

  if b.floor == b
    puts "#{a} #{tmp >= 0 ? b.floor : -1 * b.floor}"
    exit
  end
end