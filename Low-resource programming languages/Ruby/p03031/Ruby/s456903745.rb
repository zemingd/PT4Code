io = STDIN
n,m=io.gets.split.map(&:to_i)
connected_sw=m.times.map do 
  k,*s=io.gets.split.map(&:to_i)
  s.map(&:pred)
end
on_cond=io.gets.split.map(&:to_i)
ar=[0,1].repeated_permutation(n).map do |ptn|  #on/off全組み合わせ
  connected_sw.map.with_index do |sw_no,lamp_no|
    sw_no.map{|i|ptn[i]}.count(1)%2==on_cond[lamp_no]
  end.all?
end
p ar.count(true)
