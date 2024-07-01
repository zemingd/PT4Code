n, k = gets().chomp().split(' ').map(&:to_i)
term_marks = gets().chomp().split(' ').map(&:to_i)

count = k
while count < n do
    puts term_marks[count - k] < term_marks[count] ? 'Yes' : 'No'
    count += 1
end