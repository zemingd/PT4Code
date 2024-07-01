n, m = gets.split(' ').map(&:to_i)
h = gets.split(' ').map(&:to_i)

loads = []
good = []

m.times do
        l = gets.split(' ').map(&:to_i)
        if h[l[0]-1] > h[l[1]-1]
                good.append(l[0])
                good.delete(l[1])
        elsif h[l[0]-1] < h[l[1]-1]
                good.append(l[1])
                good.delete(l[0])
        end
        loads.append(l[0], l[1])
end

puts good.uniq.count + ([*(1..n)] - loads.uniq.sort).count