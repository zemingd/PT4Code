aaa = ARGV[0].to_i
bbb = ARGV[1].to_i

if ( bbb % aaa ) == 0
        puts bbb + aaa
else
        puts bbb - aaa
end