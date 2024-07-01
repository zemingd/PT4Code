N = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
num = a.length
num.times do |i|
  b = Marshal.load(Marshal.dump(a))
  b.delete_at(i)
  b.sort!
  puts b[num/2-1]
end
