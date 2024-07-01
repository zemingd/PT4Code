n = gets.to_i
t,a=gets.chomp.split(" ").map(&:to_i);
h=gets.split(" ").map(&:to_i);

temp = h.map.with_index{|x,i| {abs: (a - (t - x * 0.006)).abs, idx: i+1}}
ans = temp.sort_by{|x| x[:abs]}.first[:idx]
print("#{ans}\n")