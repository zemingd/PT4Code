n, m = gets.to_s.split.map{|t|t.to_i}
pys  = Array.new(m){|i| gets.to_s.split.map{|t|t.to_i}.push(i) }

pys.sort_by!{|prefecture, y, _| [prefecture, y] }

used = Array.new(n+1){ false }

ans = []
id = -1
pys.each do |prefecture, y, i|
  
  if !used[prefecture]
    id = 0
    used[prefecture] = true
  end
  
  id += 1
  
  ans << [i, prefecture.to_s.rjust(6, '0') + id.to_s.rjust(6, '0')]
end
  
ans.sort_by!{|i, _| i }

ans.each do |_, str|
  puts str
end