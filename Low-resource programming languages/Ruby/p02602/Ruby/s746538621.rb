require 'pp'

n, k = gets.split.map(&:to_i)
a_n = gets.split.map(&:to_i)

#pp sum
0.upto(n-1-k) do |i|
    if a_n[i] < a_n[i+k]
        puts "Yes"
    else
        puts "No"
    end


    #pp sum
end
