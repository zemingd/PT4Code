aaa,bbb = gets.chomp!.split(' ')
aaa = aaa.to_i
bbb = bbb.to_i

if ( bbb % aaa ) == 0
        puts aaa + bbb
else
        puts bbb - aaa
end
