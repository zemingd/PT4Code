n = gets.to_i
oh = Hash.new(0)
eh = Hash.new(0)
gets.split.map(&:to_i).each_with_index do |v, i|
  if i.odd?
    oh[v] += 1
  else
    eh[v] += 1
  end
end
oh = oh.sort { |(k1,v1), (k2,v2)| v2<=>v1 }
eh = eh.sort { |(k1,v1), (k2,v2)| v2<=>v1 }
om = oh[0]
em = eh[0]
if om[0] == em[0]
  puts n - om[1] + - eh.dig(1, 1).to_i
else
  puts n - om[1] + - em[1]
end
