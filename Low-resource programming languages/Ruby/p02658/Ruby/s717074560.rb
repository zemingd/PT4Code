n=gets.to_i

array=gets.split.map(&:to_i)

ans=1

array.map{|value|
    ans*=value
}

if ans > 10**18
    puts -1
else
    puts ans
end