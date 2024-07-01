N = gets.to_i

dp = []

for i in 0..N

    if i == 0

        dp[i] = 0

    elsif i < 6

        dp[i] = dp[i-1] + 1

    elsif 6 <= i && i < 9

        dp[i] = [dp[i-1]+1,dp[i-6]+1].min

    elsif 9 <= i && i < 36

        dp[i] = [dp[i-1]+1,dp[i-6]+1,dp[i-9]+1].min

    elsif 36 <= i && i < 81

        dp[i] = [dp[i-1]+1,dp[i-6]+1,dp[i-9]+1,dp[i-36]+1].min 

    elsif 81 <= i && i < 216

        dp[i] = [dp[i-1]+1,dp[i-6]+1,dp[i-9]+1,dp[i-36]+1,dp[i-81]+1].min
        
    elsif 216 <= i && i < 729

        dp[i] = [dp[i-1]+1,dp[i-6]+1,dp[i-9]+1,dp[i-36]+1,dp[i-81]+1,dp[i-216]+1].min

    elsif 729 <= i && i < 1296

        dp[i] = [dp[i-1]+1,dp[i-6]+1,dp[i-9]+1,dp[i-36]+1,dp[i-81]+1,dp[i-216]+1,dp[i-729]+1].min

    elsif 1296 <= i && i < 6561

        dp[i] = [dp[i-1]+1,dp[i-6]+1,dp[i-9]+1,dp[i-36]+1,dp[i-81]+1,dp[i-216]+1,dp[i-729]+1,dp[i-1296]+1].min

    elsif 6561 <= i && i < 7776

        dp[i] = [dp[i-1]+1,dp[i-6]+1,dp[i-9]+1,dp[i-36]+1,dp[i-81]+1,dp[i-216]+1,dp[i-729]+1,dp[i-1296]+1,dp[i-6561]+1].min

    elsif 7776 <= i && i < 46656

        dp[i] = [dp[i-1]+1,dp[i-6]+1,dp[i-9]+1,dp[i-36]+1,dp[i-81]+1,dp[i-216]+1,dp[i-729]+1,dp[i-1296]+1,dp[i-6561]+1,dp[i-7776]+1].min

    elsif 46656 <= i && i < 59049

        dp[i] = [dp[i-1]+1,dp[i-6]+1,dp[i-9]+1,dp[i-36]+1,dp[i-81]+1,dp[i-216]+1,dp[i-729]+1,dp[i-1296]+1,dp[i-6561]+1,dp[i-7776]+1,dp[46656]+1].min

    else

        dp[i] = [dp[i-1]+1,dp[i-6]+1,dp[i-9]+1,dp[i-36]+1,dp[i-81]+1,dp[i-216]+1,dp[i-729]+1,dp[i-1296]+1,dp[i-6561]+1,dp[i-7776]+1,dp[i-46656]+1,dp[i-59049]+1].min

    end

end

puts dp[N]