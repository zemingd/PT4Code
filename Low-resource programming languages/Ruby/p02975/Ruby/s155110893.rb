n = gets.to_i
a = gets.split.map(&:to_i)

num = Hash.new(0)
a.each{|e| num[e] += 1}

case num.size
when 1
    puts num[0] == n ? "Yes" : "No"
when 2
    puts n % 3 == 0 && num[0] == n / 3 ? "Yes" : "No"
when 3
    puts n % 3 == 0 && num.values.all?(n/3) ? "Yes" : "No"
else
    puts "No"
end