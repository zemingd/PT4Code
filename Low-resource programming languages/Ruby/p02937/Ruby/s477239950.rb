str=gets.chomp
t=gets.chomp
check=0
cnt=0
t.each_char do |char1|
    unless /#{char1}/ =~ str
        check=1
        break
    end
end
str_loop=str
ind=0
ans=0
if check==0
    t.each_char do |char2|
        unless str_loop.index("#{char2}",ind)
            str_loop += str
            ans += 1
            redo
        else
             ind=str_loop.index("#{char2}",ind)
             str_loop.slice!(ind)
             ans += 1
        end
    end
    puts ans + ind -1
else
    puts -1

end


