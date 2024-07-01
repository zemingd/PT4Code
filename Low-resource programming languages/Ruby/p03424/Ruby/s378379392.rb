# 日本では、3 月 3 日にひなあられという、色のついたお菓子をお供えする習慣があります。
# 1 つの袋があり、ひなあられが N 個入っています。
# この袋には、桃色、白色、緑色の 3 種類か、
# 桃色、白色、緑色、黄色の 4 種類のひなあられが入っていることが分かっています。
# 桃色を P、白色を W、緑色を G、黄色を Y と表したとき、
# 袋からひなあられを 1 粒ずつ取り出していったところ、
# i 番目に取り出したひなあられの色は Si でした。
# この袋に 3 種類のひなあられが入っていた場合は Three、
# 4 種類のひなあられが入っていた場合は Four と出力してください。

n = gets.to_i
s = gets.chomp.split

colors = {
  "p": false,
  "w": false,
  "g": false,
  "y": false
}

n.times do |i|
  case s[i]
  when "P"
    colors[:p] = true
  when "W"
    colors[:w] = true
  when "G"
    colors[:g] = true
  when "Y"
    colors[:y] = true
  end
end

if colors[:p] && colors[:w] && colors[:g] && colors[:y]
  puts "Four"
elsif colors[:p] && colors[:w] && colors[:g]
  puts "Three"
end
