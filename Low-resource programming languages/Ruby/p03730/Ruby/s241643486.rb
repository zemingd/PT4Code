a,b,c=gets.split.map(&:to_i)
flag=true
list=[]
1.upto(101) do |i|
    mod=(b*i+c)%a
    if mod==0
        break;
    elsif !list.include?(mod)
        list.push(mod)
    else
        flag=false
        break;
    end
end

puts flag==true ? 'YES':'NO'