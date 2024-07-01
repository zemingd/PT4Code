x,n = gets.chomp.split(" ").map(&:to_i);
line = gets.chomp.split(" ").map(&:to_i);


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

zeroto101line = [*0..101]

forbiddenline = zeroto101line.diff(line)



d = 100
answer = x

for i in 0..(forbiddenline.length-1) do
	if (x - forbiddenline[i]).abs < d  then
		d = (x - forbiddenline[i]).abs
		answer = forbiddenline[i]
	end
end

puts answer
