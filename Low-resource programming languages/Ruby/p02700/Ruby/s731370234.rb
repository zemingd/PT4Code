a,b,c,d=gets.chomp.split.map(&:to_i)

takahasi= c%b==0 ? c/b : (c/b)+1
aoki= a%d==0 ? a/d : (a/d)+1
    
puts takahasi <= aoki ? "Yes" : "No"