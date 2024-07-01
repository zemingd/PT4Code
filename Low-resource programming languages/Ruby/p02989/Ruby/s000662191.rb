def zc
    n = gets.chomp.to_i
    arr = (gets.chomp.split(/\s/).map{|x| x.to_i}).sort

    h = n/2
    a,b = arr[h-1], arr[h]

    puts b-a
end

#za
#zb
zc
