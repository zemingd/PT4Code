l, r = gets.split(' ').map(&:to_i)

min = 2019
(r-l).times do |i|
    (r-l-i).times do |j|
        tmp = ((l+i)*(l+i+j+1))%2019
        min = tmp if min > tmp
        if min == 0 then
            break
        end
    end
end

print min