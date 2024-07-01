n = gets.to_i
s = gets.chomp.split(//)

count = 0

def slim(n,s)
    $slims = []
    n.times do |n|
        if s[n].to_s != s[n+1].to_s
            $slims.push(s[n])
            n = n - 1
        end
    end
    return $slims
end

puts slim(n,s).length