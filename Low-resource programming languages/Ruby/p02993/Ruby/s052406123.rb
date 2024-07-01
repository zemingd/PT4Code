s = gets.chomp.split('')
last = ''
flag = false
s.each {|chr|
    if chr == last
        flag = true
        break
    end
    
    last = chr
}

if flag
    puts 'Bad'
else
    puts 'Good'
end