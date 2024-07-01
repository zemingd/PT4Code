n = gets.to_i

res = []

1.upto(n) do |x|
    1.upto(n) do |y|
        1.upto(n) do |z|
            res << "#{x}#{y}#{z}"
        end
    end
end

puts res.uniq.size