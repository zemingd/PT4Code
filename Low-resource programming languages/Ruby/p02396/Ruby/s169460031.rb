# Here your code !
i = 1
$stdin.readlines.each do |input|
    if input.to_i > 0 && input.to_i <= 10000
        puts "Case #{i}: #{input}" 
        i+=1
    end
end