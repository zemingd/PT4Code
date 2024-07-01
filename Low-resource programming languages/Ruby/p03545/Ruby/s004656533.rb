a,b,c,d=gets.split("")
["+","-"].repeated_permutation(3) do |i,j,k|
    if eval(a+i+b+j+c+k+d)==7
        puts a+i+b+j+c+k+d+"=7"
        exit 0
    end 
end
