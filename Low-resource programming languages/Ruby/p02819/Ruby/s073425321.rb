require 'prime'
x = gets.to_i
loop do
    if x.prime?
        puts x
        break
    end
    x += 1
end