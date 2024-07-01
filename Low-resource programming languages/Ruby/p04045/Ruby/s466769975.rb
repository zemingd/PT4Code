n,k = gets.chomp.split.map(&:to_i)
d = gets.chomp.split.map(&:to_i)

n.upto(n*10) do |i|
    nn = []
    tmp = i
    while tmp > 0 do
        nn.unshift(tmp%10)
        tmp /= 10
    end
    if (nn & d).size == 0
        puts i
        exit
    end
end