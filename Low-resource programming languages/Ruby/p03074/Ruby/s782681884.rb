n, k = gets.chomp!.split(" ").map!(&:to_i)
s = gets.chomp!

x = s.chars.chunk {|ch| ch == "1" }.map {|k, v| [k, v.count] }

num = 0
max = 0

while num < x.length do
    co = x[num][0] ? k * 2 + 1 : k * 2

    sum = x[num, co].inject(0) {|sum, z| sum + z[1] }
    max = [max, sum].max

    num += 1
end

puts max
