n=gets.to_i
joho=[]
n.times do
    joho << gets.split.map(&:to_i)
end

if n==1
    puts joho[0].join(" ")
elsif n==2
    puts joho.max_by{|a|a[2]}.join(" ")
else

end