require 'prime'
x = gets.to_i
x.step(by: 1, to: Float::INFINITY) do |n|
    if n.prime?
        puts n
        break
    end
end
