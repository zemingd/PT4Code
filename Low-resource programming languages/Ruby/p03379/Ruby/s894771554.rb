n = gets.chomp.to_i
x = gets.chomp.split(" ").map(&:to_i)

xc = x.clone
xc.sort!.reverse!

a = xc[x.length / 2 - 1]
b = xc[x.length / 2]

x.each do |i|
  if i < a
    puts a
  else
    puts b
  end
end