K = gets.to_i
even = []
odd = []
K.times do |e|
    if e.even?
        even.push(e)
    else
        odd.push(e) 
    end
end

puts even.length * odd.length
