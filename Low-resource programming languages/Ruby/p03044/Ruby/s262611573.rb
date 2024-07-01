n=gets.to_i
i = Array.new(n,0)
p a=$<.map{|s|s.split.map &:to_i}.sort
a.each do |e|
    if e[2].even?
        i[e[1]-1] = i[e[0]-1]
    else
        i[e[1]-1] = i[e[0]-1]^1
    end
end
puts i