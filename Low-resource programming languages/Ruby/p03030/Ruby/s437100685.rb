n = gets.to_i
sp = n.times.map{gets.chomp.split}
n.times do |i|
  sp[i] << i
end

sp.sort_by! {|a,b,c| [a,b.to_i]}

prev = sp[0][0]
ans = []
cnt = []
sp.each do |s|
  if s[0]!=prev
    ans += cnt.reverse!
    cnt = [s[2]]
    prev = s[0]
  else
    cnt << s[2]
  end
end

# cnt << sp[-1][2]
ans+=cnt.reverse!

ans.each do |a|
  puts a+1
end