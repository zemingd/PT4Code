n,m = gets.split.map &:to_i

k = []
a = []
b = {}
n.times do |i|
    k,*a[i] = gets.split.map &:to_i
    a[i].each do |ai|
        b[ai] ||= 0
        b[ai] += 1
    end
end

puts b.count{|k,bi|bi == n}
