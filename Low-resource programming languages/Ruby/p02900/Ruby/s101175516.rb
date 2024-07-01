require 'prime'

def cf(a,b)
    arr = [1]
    for i in 2..([a,b].min)
        arr.push(i) if a%i == 0 and b%i == 0 and Prime.prime?(i)
    end
    arr
end

def dd
    a,b = gets.chomp.split(/\s/).map{|x| x.to_i}

    puts cf(a,b).length
end

dd
