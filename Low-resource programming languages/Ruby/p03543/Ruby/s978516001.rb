a=gets.chomp.chars
[?+, ?-].repeated_permutation(3){|op|
    s=a.zip(op+[''])*''
    if eval(s)==7
        puts s+'=7'
        break
    end
}