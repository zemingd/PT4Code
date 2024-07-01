n,m = gets.chomp.split.map(&:to_i)
lumps = []
m.times do |i|
  lump = gets.chomp.split.map(&:to_i)
  lumps.push(lump)
end
p = gets.chomp.split.map(&:to_i)
len=n
out_put=0
[0, 1].repeated_permutation(len) do |pat| # スイッチの状態
  cnt=0
  lumps.each_with_index do |lump,i|
    on=0
    lump[1..-1].each do |s|
      if pat[s-1]==1
        on+=1
      end
    end
    if on%2==p[i] #この場合はi+1 light is on
      cnt+=1
    end
  end
  if cnt == m
    out_put+=1
  end
end
puts out_put