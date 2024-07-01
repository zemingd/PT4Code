n,kk=gets.split.map(&:to_i)
v=gets.split.map(&:to_i)

r = (0..kk).map do |k|
    i = k
    vv = []
    while i >= 0
        vv << i
        i -= 2 
    end
    vv.map!.with_index {|m,i| [m,k-i]}
    vv.map { |e|
        (e[1]+1).times.map{ |m| 
            v.rotate(-m)[0..e[1]-1].max(e[0]).inject(:+).to_i 
        }.max 
    }.max
end

p r.max