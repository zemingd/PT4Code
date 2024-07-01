nm = gets.chomp.split
n = nm[0].to_i
m = nm[1].to_i

a = []
never = false
m.times do |i|
    input = gets.to_i
    if a.include?(input-1)
        never = true
        break
    end
    a << input
end

def combi count
    return count if count == 1 || 2 || 3
    return (((count - 3) ** 2) + 4)
end

if never
    puts 0
else
    sums = []
    start = 0
    a.each do |i|
        sum = combi((i-1) - start)
        sums << sum if sum != 0
        start = i+1
    end

    sums << combi(n - start)
    pro = 1
    sums.each do |i|
        pro *= i
    end
    puts pro % 1000000007
end