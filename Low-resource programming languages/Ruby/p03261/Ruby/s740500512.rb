require 'pp'

n = gets.chomp!.to_i
w_n = []
n.times do |_|
    w_n << gets.chomp!
end

tail = w_n[0][0]
ok = true
w_n.each do |w|
    if tail != w[0]
        ok = false
        break
    end

    tail = w[-1]
end

if ok && w_n.length == w_n.uniq.length
    puts "Yes"
else
    puts "No"
end
