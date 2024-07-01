n,k=gets.split.map(&:to_i)
ret=0.0

(1..n).each do |i|
    tmp=1.0/n
    now=i
    while(now<k)
        now*=2;
        tmp/=2;
    end
    ret+=tmp;
end

puts ret