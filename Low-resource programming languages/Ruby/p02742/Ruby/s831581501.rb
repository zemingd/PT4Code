h,w=gets.split.map(&:to_i)

if h==1 || w==1
    puts 1
end

sum=0
if h%2==0
    puts h/2*w
else
    puts h/2*w+(w+2-1)/2
end
