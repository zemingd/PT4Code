#方針: 中心点は 101×101パターンしかないので全探索できる。
n = gets.to_i
ary = Array.new(n){gets.split.map(&:to_i)}.sort_by{|a| a[2]}.reverse

#p ary

def calc(x,y,cx,cy,h)
  return (x-cx).abs + (y-cy).abs + h
end

(0..100).each do |i|
  (0..100).each do |j|
    tmp1 = [] #h>0が矛盾しないか判定用
    tmp2 =[] #h=0が矛盾しないか判定用
    ary.each do |a|
      if a[2]>0
        
        tmp1 << calc(a[0],a[1],i,j,a[2])
      else
        tmp2 << a
      end
    end
    if tmp1.uniq.length == 1
      flag = true
      tmp2.each do |t|
        if tmp1[0] - (t[0]-i).abs - (t[1]-j).abs > 0
          flag = false
        end
      end
      puts "%d %d %d" % [i,j,tmp1[0]] if flag
    end
  end
end