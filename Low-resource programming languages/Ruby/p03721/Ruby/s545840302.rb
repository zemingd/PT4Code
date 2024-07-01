n,k = gets.split.map(&:to_i)

arr = []
n.times {arr << gets.split.map(&:to_i)}
arr.sort_by{|e| e[0]}

sum = 0
arr.each do |a,b|
    k -= b

    if k <= 0
        puts a
        break
    end
end