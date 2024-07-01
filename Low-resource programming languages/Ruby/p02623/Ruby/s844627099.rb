require "pp"

n, m, k = gets.split(" ").map(&:to_i)
a_i = gets.split(" ").map(&:to_i)
b_i = gets.split(" ").map(&:to_i)

def sort a_i, b_i, k, res, sum
    if a_i.empty? && b_i.empty? then
        return res
    end

    a_first = a_i.first || Float::INFINITY
    b_first = b_i.first || Float::INFINITY
    if a_first <= b_first then
        sort a_i[1..-1], b_i, k, res, sum if sum + a_first > k
        sort a_i[1..-1], b_i, k, res + [a_first], sum + a_first
    else
        sort a_i, b_i[1..-1], k, res, sum if sum + b_first > k
        sort a_i, b_i[1..-1], k, res + [b_first], sum + b_first
    end
end

sorted = sort(a_i, b_i, k, [], 0)

res = 0
sum = 0
sorted.each do |item|
    break if sum + item > k

    sum += item
    res += 1
end

puts res

