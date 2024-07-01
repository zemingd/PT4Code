x,n = gets.chomp.split.map(&:to_i)
q = gets.chomp.split.map(&:to_i)

i = 0
check = true
while(check)
    if !q.find_index(x-i)
        print x-i 
        check = false
    elsif !q.find_index(x+i)
        print x+i 
        check = false
    end
    i = i + 1
end