def main(str)
  t8, t10 = str.split(" ").map(&:to_i)
  (0..10**100).each do |i|
    i8  = (i * 0.08).floor
    i10 = (i * 0.10).floor
    return  i if i8 == t8 && i10 == t10
    return -1 if i8 > t8 && i10 > t10
  end
end

puts main($stdin.read.chomp)