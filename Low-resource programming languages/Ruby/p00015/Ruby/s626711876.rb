n=gets.to_i
1.upto(n){
    a=gets.to_i
    b=gets.to_i
    (a+b)/(10**80)==0 ? puts a+b : puts "overflow"
}