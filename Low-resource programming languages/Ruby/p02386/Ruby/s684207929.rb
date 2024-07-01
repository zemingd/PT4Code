class Dice
  V={N:0,E:1,S:2,W:3}
  def initialize(label)
    @label=label # Top down Rignt Left up Bottom
    @top=1
    @around=[5,3,2,4] # U R D L
    # 右に転がす場合
    # 対角値(レフト,idx3)が上面(top)になる
    # 右(idx1)にもともと上面だった値（top）が入る
    # その対角面(右,idx1)には対角値（合計7になる値）が入る
    # 1 => [5,3,2,4]
    # 4 => [5,1,2,6]
    # 下に転がす場合
    # 1 => [5,3,2,4]
    # 5 => [6,3,1,4]
  end
  def set_position(top_value,front_value)
    set_uniq_top(top_value)
    set_front(front_value)
  end
  def set_uniq_top(top_value)
    # 与えられた値（ラベル値）になるようにダイスを回転させる
    # 縦横の回転数を計算して実際に動かす
    top_num=@label.index(top_value)+1
    # TOP面をあわせる
    if top_num==@top then
    elsif idx=@around.index(top_num)
      rn=self.reverse_vector(idx)
      v=V.key(rn)
      self.move(v)
    elsif
      2.times{self.move("S")}
    end
  end
  def set_front(front_value)
    # 与えられた値（ラベル値）になるようにダイスを回転させる
    # 縦横の回転数を計算して実際に動かす
    front_num=@label.index(front_value)+1
    # FRONT面を合わせる
    if idx=@around.index(front_num)
      n=reverse_vector(idx)
      self.turn(n) unless n==0
    else
      #puts "i can not"
    end
  end
  def turn(n)
    # n回右に回転する（TOPは変わらず）
    # n = turn_right * n
    @around.push(@around.shift(n)).flatten!
  end
  def move(v)
    # v = U,R,D,L
    #     N,E,S,W
    #     0,1,2,3
    vn=V[v.to_sym] # 移動方向のインデックス数値
    rn=reverse_vector(vn) # 対角のインデックス数値（2を足す。4を超えていた場合は剰余）
    @top,@around[vn]=@around[rn],@top
    @around[rn]=7-@around[vn]
  end
  def state
    arr=[]
    arr<<@label[@top-1] #top
    @around.each do |n|
      arr<<@label[n-1] #around
    end
    arr<<@label-arr #bottom
    return arr
  end
  def reverse_vector(vn)
    return (vn+2)%4
  end
end
def uniq_value(label)
  label.each do |i|
    return i if label.count{|j|i==j} == 1
  end
  return label[0]
  #uts "uniq none"
end


def code_run4
  iN=$stdin.gets.to_i
  # 基準ダイス読み込み
  label1=$stdin.gets.split.map(&:to_i)
  d1=Dice.new(label1)
  # 基準値作成
  t=uniq_value(label1)
  d1.set_uniq_top(t)
  f=d1.state[3] #down(front)

  ans=nil
  (iN-1).times do
    labelx=$stdin.gets.split.map(&:to_i)
    dx=Dice.new(labelx)
    dx.set_position(t,f)
    (ans="No";break) if d1.state==dx.state
  end
  puts ans ? ans : "Yes"

end
  code_run4


