n=gets.chomp.to_i
x=gets.chomp.split(" ").map { |e| e.to_i }

median = n/2 - 1

n.times do |i|
  a = Marshal.load(Marshal.dump(x))
  a[i] = 10**9 + 1
  a = a.sort
  puts a[median]
end
