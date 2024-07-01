# 自身を起点として上下左右のうち1つと自分自身を黒にする。
# 黒は重ねて書けるので偶数奇数とかは関係ない
# 上下左右方向しか伸ばせない（し、非可逆）なので、受け取ったマス目を
# 「#をみつけたら上下左右いずれかに#があればOK」ってことにする。
# 最初消して更新してく方針だったけど意味無さそうってのにやっと気づいたので。
@h, @w = gets.chomp.split.map(&:to_i)
@table = Array.new(@h, [])
@h.times do |i|
  @table[i] += gets.chomp.chars
end

def check(y, x)
  dir = [0, -1, 0, 1, 0]
  0.upto(3) do |i|
    yi = y+dir[i]
    xi = x+dir[i+1]
    if 0<=yi && yi<@h && 0<=xi && xi<@w
      return true if @table[yi][xi] == "#"
    end
  end
  return false

end 

flag = true
@h.times do |y|
  break if !(flag)
  @w.times do |x|
    break if !(flag)
    next if @table[y][x]=="."
    if check(y, x) == false
      flag = false
      break
    end
  end
end

if flag
  puts "Yes"
else
  puts "No"
end