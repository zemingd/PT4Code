n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

result = []

(0...k).each do |i|
    if a[i..i + n - k].sum < a[i+1..i+1+n-k].sum
        result << 'Yes'
    else
        result << 'No'
    end
end

puts result
