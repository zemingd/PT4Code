n, m = gets.chomp.split(" ").map(&:to_i)
# arr = [*1..n]
# i = 1
 nozoku = []


# nozoku.each do |j|
#     arr.delete(j)
# end

suuchi = Array.new(n+1,0)

m.times do |i|
    a = gets.chomp.to_i
    nozoku << a
end
#p nozoku
i = 1
until i-1 == n
    if nozoku.include?(i)
        suuchi[i] = 0
        # puts "UU"
        # p suuchi
    elsif i >= 3 
        # puts "UU"
        # p  suuchi[i-1] 
        # p suuchi[i-2]
        suuchi[i] = suuchi[i-1] + suuchi[i-2]
    elsif i == 1
        suuchi[i] = 1
    elsif i == 2 && suuchi[1] == 1
        suuchi[i] = 2
    elsif i == 2 && suuchi[1] == 0
        suuchi[i] = 1
    end
    
    if suuchi[i] >= 1000000007
        suuchi[i] = suuchi[i] % 1000000007
    end
    #p suuchi
    i += 1
end
#p suuchi.pop % 1000000007
puts suuchi[-1]
# end