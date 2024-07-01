N = gets.to_i;
a = gets.split.map(&:to_i);
num = Array.new(1000000, 0);
max = 0;
(0..(N-1)).each{|i| max = a[i] if a[i] > max};
num[0] = 2;
ans = 0;