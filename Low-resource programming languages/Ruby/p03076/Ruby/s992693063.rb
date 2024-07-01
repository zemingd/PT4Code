arr = []
5.times{arr << gets.to_i}
min = nil
arr.each{|x| min = (x % 10) if (min.nil? || min > (x % 10)) && (x % 10) > 0}

sum = 0
if min
    y = arr.find_index{|x| (x % 10) == min}
    x = arr[y]
    arr.delete_at(y)
    arr << x
    sum = 0
    arr[0..-2].each{|x|
        y = (10 - (x % 10)) % 10
        sum += (x + y)
    }
    sum += arr[-1]
else
    sum = arr.inject(:+)
end
puts sum