def binsort(n)
    bin = []
    n.times do
        i = gets.to_i
        if bin[i] == nil
            bin[i] = 1
        else
            bin[i] += 1
        end
    end
    array = []
    bin.each_with_index do |x,i|
        if x != nil
            x.times do array.push(i) end
        end
    end
    return array
end
def mingap(a, k)
    min = a[a.length-1] - a[0]
    (a.length-2).times do |i|
        compare = a[i+2] - a[i]
        if compare == 0 then return 0 end
        if min > compare
            min = compare
        end
    end
    return min
end

n, k = gets.split.map &:to_i

p mingap(binsort(n), k)