n, a , b,c = gets.chomp.split(" ").map(&:to_i)
ss = []
saisyou = []
(0..n-1).each do |i|
    s = gets.chomp.to_i
    ss << s    
end
ans = 1000
["0","1","2","3"].repeated_permutation(n) do |arr|
    abc = [0,0,0]
    mp = 0
    (0..n-1).each do |e|
        if arr[e] == "3"
            next
        else
            if abc[arr[e].to_i] != 0 
                mp += 10
            end
            abc[arr[e].to_i] += ss[e].to_i
        end
    end
        if abc.include?(0)
            next
        end
        mp += (abc[0]-a).abs + (abc[1]-b).abs + (abc[2]-c).abs
    ans = [ans,mp].min
end
p  ans