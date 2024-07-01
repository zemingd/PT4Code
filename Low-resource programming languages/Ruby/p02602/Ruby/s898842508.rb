n, k = gets().chomp().split(' ').map(&:to_i)
term_marks = gets().chomp().split(' ').map(&:to_i)

count = k
while count < n do
    if k == 1
        puts term_marks[count] < term_marks[count] ? 'Yes' : 'No'
    else
        puts term_marks[count - k] < term_marks[count] ? 'Yes' : 'No'
    end
    count += 1
end