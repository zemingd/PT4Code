n, k = gets.chomp!.split(" ").map(&:to_i)
s = gets.chomp!
s_digit = s.length
s_i = s.to_i(2)

#puts s
#puts n
#puts s_i

x = s.chars.chunk {|ch| ch == "1" }.map {|k, v| [k, v.count] }

#puts x
#puts ""
#puts  x[0][0]
#puts ""

num = 0
max = 0
while num < x.length do
    sub = if x[num][0] == true
            x[num, k * 2 + 1]
        else
            x[num, k * 2]
        end

    sum = sub.inject(0) {|sum, z| sum + z[1] }
    max = [max, sum].max
    num += 1
end

puts max