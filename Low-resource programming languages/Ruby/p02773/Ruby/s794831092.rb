n   = gets.to_i
str = Array.new
n.times {
    str << gets.chomp.delete('\"').to_s
}
#配列をソート
str.sort!()
#重複する要素の最大値を取り出す
mm = str.group_by(&:itself).map{ |k, v| [k, v.count] }.max()
#p max.last
str.select{|v| str.count(v) > 1 }.uniq.each{ |m|
    if str.count(m) >= mm.last then
        print(m.delete('"'),"\n")
    end
}