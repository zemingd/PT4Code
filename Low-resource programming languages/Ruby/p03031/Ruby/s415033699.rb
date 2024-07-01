io = STDIN
n,m=io.gets.split.map(&:to_i)
connected_sw=m.times.map do 
  ar=io.gets.split.map(&:to_i)
  ar[1..-1]
end
on_cond=io.gets.split.map(&:to_i)
cnt=(1<<n).times.map do |mask|  #on/off全組み合わせ
  ar=m.times.map do |light_no|
    sws=connected_sw[light_no].map do |sw_no|
      mask & 1<<(sw_no-1) > 0
    end
    sws.count(true)%2==on_cond[light_no]
  end
  ar.all?
end
p cnt.count(true)
