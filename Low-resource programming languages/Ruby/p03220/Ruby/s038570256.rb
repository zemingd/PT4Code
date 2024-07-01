n=gets.chomp.to_i
t,a=gets.chomp.split(" ").map(&:to_i)
h=gets.chomp.split(" ").map(&:to_i)


def test(n,t,a,h)
  puts h.map.with_index {|x,i|{i: i, v: (a.-(t.-x*0.006)).abs}}.sort{|a,b| a[:v]<=>b[:v] }.first[:i].next
end

test(n,t,a,h)