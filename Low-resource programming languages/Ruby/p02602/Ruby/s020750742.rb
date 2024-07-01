n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

result = []

(0...k).each do |i|
    result << a[i..i + n - k].sum
end

ans = []

(0...result.size-1).each do |j|
    if result[j] < result[j+1]
        ans << 'Yes'
    else
        ans << 'No'
    end
end

puts ans
