ar = gets.chomp.split(" ").map{|i|i = i.to_i}
$n = ar[0]
$a = ar[1]
$b = ar[2]
$c = ar[3]
$l_ar = []
$n.times do|i|
    $l_ar << gets.chomp.to_i
end
$l_ar.sort!

def eda(pos, a, b, c)
    if pos >= $n then 
=begin
        if [a,b,c].min < 0 then
            return 10**4 
        else
=end
            return (a-$a).abs + (b-$b).abs + (c-$c).abs - 30
        #end
    end

    ret0 = eda(pos + 1, a, b, c)
    ret1 = eda(pos + 1, a + $l_ar[pos], b, c) + 10
    ret2 = eda(pos + 1, a, b + $l_ar[pos], c) + 10
    ret3 = eda(pos + 1, a, b, c + $l_ar[pos]) + 10
    #puts "now [ret0,ret1,ret2,ret3].min = #{[ret0,ret1,ret2,ret3].min}"
    return [ret0,ret1,ret2,ret3].min

end

puts eda(0, 0, 0, 0)