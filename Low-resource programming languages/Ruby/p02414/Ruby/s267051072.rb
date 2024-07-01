n, m, l = gets.split.map(&:to_i)

a = []
i = 0

for i in 0..(n-1)
    a[i] = gets.split.map(&:to_i)
end

b = []
j = 0

for j in 0..(m-1)
    b[j] = gets.split.map(&:to_i)
end

ans = Array.new(n)

ans.each_with_index do |n, i|
    ans[i] = Array.new(l, 0)
end

b.each_with_index do | k , i_1|
    k.each_with_index do | v, i_2|
        for c in 0..(n-1)
           ans[c][i_2]  += a[c][i_1] * v
        end
    end 
end

ans.each do |n|
    str = ""
    n. each do |l|
        str << "#{l} "
    end
    puts str.strip
end
