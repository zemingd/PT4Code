N=gets.to_i
array=gets.chomp.split(" ").map(&:to_i).sort
MAX_A=array[-1]
MEMO=Array.new(MAX_A+1,0)
array.each do |a|
    next if MEMO[a] == 2
    if MEMO[a] == 1
        MEMO[a]=2
        next
    end
    MEMO[a]=1
    e=2
    while a*e <= MAX_A+1 do
        MEMO[a*e]=2
        e+=1
    end
end
puts array.select{|a| MEMO[a]==1 }.length
