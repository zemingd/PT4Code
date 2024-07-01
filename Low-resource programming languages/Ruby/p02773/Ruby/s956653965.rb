n   = gets.to_i     #入力数
str = Array.new
n.times {
     str << gets.chomp.delete('\"').to_s #文字列を格納
}
#配列をソート(破壊的)
str.sort!()

# 1.group_by(&:itself):同じ要素でまとめる(この時点で連想配列になる)
    #p m = str.group_by(&:itself) 
# 2.map()ですべての要素に対して[key] [Value.count]で要素名と数にまとめる
    mm = str.group_by(&:itself).map{ |k, v| [k, v.count] }
# 3.max[1]で最大値をとる配列を得る
    mmm = str.group_by(&:itself).map{ |k, v| [k, v.count] }.max[1]

mm.each { |k,v|
    if v == mmm then
         print("#{k}\n")
    end
}