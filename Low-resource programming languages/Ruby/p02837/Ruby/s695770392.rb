N=gets.to_i
AS = N.times.map {
    n = gets.to_i
    n.times.map { gets.split.map(&:to_i) }
}

def f(target)
    target.each.with_index do |a,i|
        next if a == 0
        AS[i].each do |x,y|
            # p [target[x-1], 1-(a^y), [a,i],[x,y]]
            if target[x-1] != y
                return 0
            end
        end
    end
    target.count(1)
end

ret = 0
[0,1].repeated_permutation(N) do |target|
    # p target
    n = f(target)
    ret = n if ret < n
end

puts ret