X, Y, Z, K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)
C = gets.chomp.split.map(&:to_i)

tastes = []
A.each do |a|
  B.each do |b|
    tastes << a + b
  end
end
tastes.sort!{|a, b| b <=> a}

ans = []
C.sort!{|a, b| b <=> a}.each do |c|
  tastes[0...K].each do |taste|
    ans << taste + c
  end
end
ans.sort!{|a, b| b <=> a}

ans[0...K].each do |item|
  puts item
end