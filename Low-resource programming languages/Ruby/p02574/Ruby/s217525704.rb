require 'prime'

N=gets.to_i
array=gets.chomp.split(" ").map(&:to_i)
MEMO={}
setwise=false
array.each do |a|
    a.prime_division.each do |p,e|
        MEMO[p] ||= 0
        MEMO[p]+=1
        if MEMO[p] == N
            puts "not coprime"
            exit
        end
        if MEMO[p] > 1
            setwise=true
        end
    end
end
if setwise
    puts "setwise coprime"
else
    puts "pairwise coprime"
end
