str=gets.chomp
t=gets.chomp
check=0
cnt=0
t.each_char do |char1|
    if /#{char1}/ =~ str
        cnt += 1
    else
        check=1
        break
    end
end

str_loop=String.new
if check==0
    cnt.times do 
        str_loop += str
    end
end

ary=Array.new
ind=0
ans=0
if check==0
    t.each_char do |char2|
        ind=str_loop.index("#{char2}",ind)
        str_loop.slice!(ind)
        ans +=1
    end
    p ind + ans
else
    puts -1

end
