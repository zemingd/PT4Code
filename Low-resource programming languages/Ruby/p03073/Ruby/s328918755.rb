class Array

  # 配列どうしの「差分」を求めるメソッド。
  # [1,2,2,3].diff([2,3,4]) => [1,2] 
  def diff(ary)
    temp = self.dup # selfの破壊を防ぐため。
    ary.each do |val|
      idx = temp.index(val)
      next if idx == nil # ary2の要素がary1にないときはパス。
      temp.delete_at(idx)
     end
     temp
  end

end
zs = (1..50000).to_a.fill(0).zip((1..50000).to_a.fill(1)).join("").split("").map(&:to_i)
os = (1..50000).to_a.fill(1).zip((1..50000).to_a.fill(0)).join("").split("").map(&:to_i)
s = gets.chomp.split("").map(&:to_i)
zssabun = s.diff(zs.take(s.size)).size
ossabun = s.diff(os.take(s.size)).size
puts [zssabun,ossabun].sort[0]
