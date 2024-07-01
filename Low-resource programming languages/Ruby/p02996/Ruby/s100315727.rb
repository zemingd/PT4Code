N = gets.to_i
x = Array.new(N).map{Array.new()}
N.times do |i|
    x[i] = gets.split.map(&:to_i)
end
t = 0
x = x.sort {|a,b| a[1] <=> b[1]}
flag = true
x.each do |c|
    t += c[0]
    if c[1] >= t then
    else
        flag = false
        break

    end
end
puts flag ? "Yes" : "No"