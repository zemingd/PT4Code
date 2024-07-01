str = gets.chomp
length = str.length
count = 0

(length/2).to_i.times{
    hozi = str[count]
    str[count] = str[length -1 - count]
    str[length -1- count] = hozi
    count += 1
}

puts str