n = gets.to_i
sum = 0
s = Array.new
n.times do ||
    ss = gets.to_i
    s.push(ss)
    sum += ss
end
s.sort!

def calc(s,sum)
    if s.empty? || sum % 10 != 0
        return sum
    end
    array = Array.new
    s.each do |ss|
        array.push((sum-ss)%10==0?0:sum-ss)
    end
    if array.empty?
        s.each_with_index do |ss,index| 
            array.push(calc(index == 0 ? s[index+1..array.length-1] : s[0..index-1]+s[index+1..array.length-1],sum-ss))
        end
    end
    return array.max
end

puts calc(s,sum)