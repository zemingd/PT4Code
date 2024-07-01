require 'prime'
x = gets.chomp.to_i
a = Float::INFINITY
x.upto (a) do |i|
    # p i
     xx = i.prime_division
     size = i.prime_division.size
    if size == 1 && xx[0][0] == i
        puts i
        break
    end
end