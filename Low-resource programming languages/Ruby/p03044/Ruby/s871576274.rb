require 'set'
n = gets.chomp.to_i

kyori = Array.new(n+1){Array.new(n+1)}
hen = Array.new(n+1){Set.new}
(n-1).times do
  u,v,w = gets.chomp.split().map(&:to_i)
  kyori[u][v] = w
  kyori[v][u] = w
  hen[u].add v
  hen[v].add u
end


ans = Array.new(n+1, nil)
ans[1] = 1
q = [1]
while !q.empty?
  #p hen
  ten = q.shift
  hen[ten].each do |i|
    hen[i].delete(ten)
    q.push i
    if ans[ten] == 1 && kyori[ten][i].even?
      ans[i] = 1
    elsif ans[ten] == 1 && kyori[ten][i].odd?
      ans[i] = 0
    elsif ans[ten] == 0 && kyori[ten][i].even?
      ans[i] = 0
    elsif ans[ten] == 0 && kyori[ten][i].odd?
      ans[i] = 1
    end
  end
  hen[ten] = nil
end

ans.each do |an|
  puts an
end