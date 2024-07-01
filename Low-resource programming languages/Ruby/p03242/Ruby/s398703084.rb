hoge = ""
gets.strip.split("").each{ |i| hoge += i=="1" ? "9" : "1" }
puts hoge.to_s