n   = gets.to_i
str = Array.new
n.times {
    line = gets.chomp  
    str << line.split().to_s
}

#重複する要素の最大値を取り出す
 str.select{|v| str.count(v) > 1}.uniq.each{ |m|
    tmp = m.to_s
    tmp2 = tmp.delete("^a-z")
    print(tmp2.delete('"'),"\n")
 }

