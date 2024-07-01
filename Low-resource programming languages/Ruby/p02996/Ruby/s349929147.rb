N = gets.chomp.to_i
ab = Array.new(N){Array.new(2)}
str = ""
for x in 0...N
    str = gets.split
    ab[x][0],ab[x][1] = str[0].to_i, str[1].to_i
end
ab.sort_by! {|x| x[1]}
sum = 0
for x in 0...N do
    sum += ab[x][0]
    if ab[x][1] < sum
       puts "No"
       exit
    end
end
puts "Yes"