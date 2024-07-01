N ,W = gets.split.map{|i| i.to_i}
input = Array.new(N).map{Array.new(2)}
for i in 0 .. N - 1
    input[i][0] , input[i][1] = gets.split.map{|i| i.to_i}
end
input.sort!{|a , b| a[0] <=> b[0]}

c = Hash.new
dp = Hash.new(10 ** 18)
dp[0] = 0
max = 0

for i in 0 .. N - 1

    dp.each do |key , value|

        if value + input[i][0] > W
            break
        end

        if dp[key + input[i][1]] > value + input[i][0]
            c[key + input[i][1]] = value + input[i][0]

            if key + input[i][1] > max
                max = key + input[i][1]
            end

        end

    end

    dp.merge!(c)
    c.clear

end

puts max