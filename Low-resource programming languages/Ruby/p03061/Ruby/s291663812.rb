
def gcd(left, right)
    if left == 0
        return right
    elsif right == 0
        return left
    end

    if right > left
        tmp = right
        right = left
        left = tmp
    end

    loop do
        # puts "#{left}, #{right}"
        remainder = left % right
        break if remainder == 0
        left = right
        right = remainder
    end

    return right
end

def line_gcd(line)
    p line
    if line.length == 2
        return gcd(line[0], line[1])
    else
        return gcd(line_gcd(line.slice(0, line.length - 1)), line[line.length - 1])
    end
end

n = gets.chomp.to_i

line = gets.chomp.split(" ").map(&:to_i)
line.insert(0, 0)
line.push(0)

max = 0
for i in 1..(line.length - 2)
    puts "*****#{i}******"
    v = 0
    if i == 1
        v = gcd(line[0], line_gcd(line.slice(2, line.length - 2)))
    elsif i == line.length - 2
        v = gcd(line_gcd(line.slice(0, line.length - 2)), line[line.length - 1])
    else
        v = gcd(line_gcd(line.slice(0, i)), line_gcd(line.slice(i + 1, line.length - i - 1)))
    end
    if v > max
        max = v
    end
    puts "max: #{max}"
end

puts max
