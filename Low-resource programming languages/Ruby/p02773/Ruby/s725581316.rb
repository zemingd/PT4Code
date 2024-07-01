n = gets.to_i
h = Hash.new(0)
n.times do |i|
    h[gets.chomp] += 1
end

l =  h.sort {|a,b| a[1]<=>b[1]}.reverse

m = l[0][1]
l.each do |v|
    if v[1] == m
        puts v[0]
    else
        break
    end
end
