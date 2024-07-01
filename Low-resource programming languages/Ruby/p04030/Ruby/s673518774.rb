s=gets.chomp.split("")
str=''
s.each{|c|
    if c=='B'
        str.chop!
    else
        str=str+c
    end
}
puts str