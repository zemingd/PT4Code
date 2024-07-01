N = gets.to_i
i = gets.split.map(&:to_i).inject(0) { |s,i| i==s+1 ? s+1 : s }
p i>0 ? N-i : -1 