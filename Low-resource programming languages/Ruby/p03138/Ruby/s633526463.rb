n,k = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
max = k.to_s(2).size
keta = Array.new(max,0)
thresh = (n/2.0).ceil
ans = ''.rjust(max,'0')
reg = k.to_s(2)
free = false

max.times do |mi|
    n.times do |ni|
        s = a[ni].to_s(2).rjust(max,'0')
        keta[mi] += (s.slice(s.size-max,max)[mi].to_i - 1) * -1
        if keta[mi] >= thresh
            if free || reg[mi] == '1'
                ans[mi] = '1'
            end
            break
        end
        if !free && keta[mi] < thresh && reg[mi] == '1'
            free = true
        end
    end
end

ans = ans.to_i(2)
sum = 0
n.times do |i|
    sum += ans^a[i]
end
puts sum