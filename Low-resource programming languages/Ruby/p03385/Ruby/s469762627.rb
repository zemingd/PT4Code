s = gets.split.map(&:to_i)
s[0].upto(s[1]){
    |i|
    if( i<s[0]+s[2] ) then
        puts(i)
    elsif( i+s[2]>s[1] ) then
        puts(i)
    end
}