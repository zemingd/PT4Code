ans = 0
curr = 0
gets.chomp.chars.each do |c| 
    curr=(c=="R")?(curr+1):0
    ans = [curr,ans].max
end

p ans