n,m=gets.chomp.split(" ").map(&:to_i)

ret = Array.new(m, 0) # [最終日, .... , 最初の日]

inputs = []
(0..(n-1)).each do |i|
    a,b=gets.chomp.split(" ").map(&:to_i)
    inputs[i] = [a, b]
end

inputs = inputs.sort {|a, b| b[1] <=> a[1] }

inputs.each do |input|
    a = input[0]
    b = input[1]
    if m >= a
        ((a-1)..m-1).each do |i| 
            if ret[i] == 0
                ret[i] = b
                break
            end
        end
    end
end

puts ret.reduce(&:+)

