n, k = gets().chomp().split(' ').map(&:to_i)
term_marks = gets().chomp().split(' ').map(&:to_i)

count = k
while count < n do
    prev_mark = term_marks[(count - k)...count].inject(:*)
    next_mark = term_marks[(count + 1 - k)...(count+1)].inject(:*)
    if prev_mark < next_mark
        puts 'Yes'
    else
        puts 'No'
    end
    count += 1
end