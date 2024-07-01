a,b,c,d=gets.split("")
["+","-"].repeated_permutation(3) do |i,j,k|
    n=a+i+b+j+c+k+d
    if eval(n)==7
        puts n+"=7"
        exit
    end
end
