a,b,c,d = gets.chomp.split.map(&:to_i)

cnt_t = (a/d.to_f).ceil
cnt_a = (c/b.to_f).ceil

puts cnt_t >= cnt_a ? "Yes" : "No"