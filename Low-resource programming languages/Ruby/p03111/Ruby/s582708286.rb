n,a,b,c = gets.split.map(&:to_i)
l = n.times.map{gets.to_i}
ans = 100000
[0,1,2,3].repeated_permutation(n) do |arr|
    ret = 0
    x = [0,0,0]
    y = [0,0,0]
    n.times do |i|
        next if arr[i] == 3
        x[arr[i]] += l[i]
        y[arr[i]] += 1
    end
    next if y.any?{|i|i == 0}
    ret += (y.inject(:+)-3)*10
    ret += (a-x[0]).abs+(b-x[1]).abs+(c-x[2]).abs
    ans = ret if ans > ret
end
puts ans