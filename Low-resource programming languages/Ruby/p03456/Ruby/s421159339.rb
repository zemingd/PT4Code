num = STDIN.gets.split(' ').join('').to_i
(2..(num/2)).each do |n|
    if n * n == num
        puts 'Yes'
        exit
    end
end
puts 'No'