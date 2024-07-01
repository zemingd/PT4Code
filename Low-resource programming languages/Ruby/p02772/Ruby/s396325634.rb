n = gets.chomp.to_i
x = gets.chomp.split.map(&:to_i)

even_number = x.select{|i| i.even?}
answer = []
even_number.each do |i|
    if (i % 3 == 0) || (i % 5 == 0)
        answer << i
    end
end

puts (answer.length != 0 ? 'APPROVED' : 'DENIED')