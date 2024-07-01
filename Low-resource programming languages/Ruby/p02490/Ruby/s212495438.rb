# your code goes here
loop {
    a, b = gets.split(" ")
    if a=="0" && b == "0"
        break
    end
    
    if a.to_i() > b.to_i()
    	a, b = b, a
    end

    puts a + " " + b
}