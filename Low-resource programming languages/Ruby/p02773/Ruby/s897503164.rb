n   = gets.to_i     #入力数
str = Array.new
n.times {
     str << gets.chomp.delete('\"').to_s #文字列を格納
}

# 1.group_by(&:itself):同じ要素でまとめる(この時点で連想配列になる)
    #p m = str.group_by(&:itself) 
# 2.map()ですべての要素に対して[key] [Value.count]で要素名と数にまとめて mm に格納
    mm = str.group_by(&:itself).map{ |k, v| [k, v.count] }
# 3.辞書順に並べ替え
    mm.sort!()
# 4.mmをvでカウントした最大値を入手→その[1]をmmmに格納
    mmm = mm.max_by{ |k,v| v }
mm.each { |k,v|
    if v == mmm[1] then
         print("#{k}\n")
    end
}