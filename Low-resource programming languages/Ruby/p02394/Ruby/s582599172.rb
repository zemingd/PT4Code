X = gets.chomp.split.map(&:to_i)
if(X[2]-X[4]<0 || X[2]+X[4]>X[0] || X[3]-X[4]<0 || X[3]+X[4]>X[1])
    puts "No"
else
    puts "Yes"
end