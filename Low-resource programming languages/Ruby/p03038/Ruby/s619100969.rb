n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort
b=$<.map{|s|s.split.map &:to_i}.sort {|a, b| b[1] <=> a[1] }
i = 0
z = false
b.each do |e|
    e[0].times do
        if a[i] < e[1]
            a[i] = e[1] 
        else
            z=true
        end
        break if z
        i += 1
    end
    break if z
end
p a.inject(:+)