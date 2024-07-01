N= gets.to_i
A = gets.split(' ').map(&:to_i)
MAX = 10 ** 18
def sum(arr)
    return 1 if arr.empty?
    top = arr.shift
    return 0 if top > MAX
    top * sum(arr)
end

result = sum(A)
if result > MAX || result == 0
    puts "-1"
else
    puts result
end