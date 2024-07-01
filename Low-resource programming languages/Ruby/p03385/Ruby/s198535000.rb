s = gets.split.map(&:to_i)
a = s[0]
b = s[1]
k = s[2]
a.upto(b){
    |i|
    puts(i) if( i<a+k || i+k>b )
}