n=gets.to_i
a = []
a += (1..5).map{|m| 9**m}
a += (1..6).map{|m| 6**m}
a.sort!.reverse!
i = 0
a.each do |e|
  if n-e >= 0
    n -= e
    i += 1
    redo
  end
end
i += n
p i