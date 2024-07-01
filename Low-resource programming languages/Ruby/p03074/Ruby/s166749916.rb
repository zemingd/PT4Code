N,K=gets.split.map(&:to_i)
S=gets.chomp.chars

arr = S.chunk {|c| c}.map{|a,b| [a,b.length]}.to_a

i = 0
j = K
sum = 0
ret = 0
while i < arr.length
    c,n = arr[i]
    if c == '1'
        sum += n
    elsif 0 < j
        j -= 1
        sum += n
    else
        sum -= arr[i-K*2][1]
        sum -= arr[i-K*2-1][1] if 0 <= i-K*2-1
        sum += n
    end
    # p [ret,sum,i,j]
    ret = sum if ret < sum
    i += 1
end

puts ret