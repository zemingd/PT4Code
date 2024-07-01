class Integer
    def price_playable
        [1, 6, 9].each_with_object([]){|i, arr| 
            next arr << i if i == 1
            
            power = 1
            while i ** power <= self do
                arr << i ** power
                power += 1
            end
        }.sort
    end
end


def count_dp(n, price_playable) #dp法
    c_dp = Array.new(n+1, n)
    c_dp[0] = 0 
    
    (1..n).each{|i| 
        (0...price_playable.size).each{|j| 
            break if i < price_playable[j]
            #puts "#{i}, #{j}, #{c_dp[i]}, #{c_dp[i-price_playable[j]] + 1} , #{i-price_playable[j]}"
            c_dp[i] = c_dp[i-price_playable[j]] + 1 if c_dp[i] > c_dp[i-price_playable[j]] + 1
        }
    }
    
    c_dp[n]
end

n = gets.to_i
price_playable = n.price_playable
#p price_playable
x = count_dp(n, price_playable)
p x