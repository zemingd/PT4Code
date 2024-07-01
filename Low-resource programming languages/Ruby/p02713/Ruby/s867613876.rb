K=gets.chomp.to_i
A=[*1..K]
ans=0
A.repeated_combination(3) do |a,b,c|
    if a==b && b==c
        ans+=a.gcd(b).gcd(c)
    elsif a!=b && b!=c
        ans+=(a.gcd(b).gcd(c))*6
    else
        ans+=(a.gcd(b).gcd(c))*3
    end
end

puts ans