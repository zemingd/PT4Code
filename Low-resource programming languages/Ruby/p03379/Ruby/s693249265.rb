# 毎回計算しても間に合うんじゃね？N<=200000だしソート使っても余裕では
# と思ってたけど全然ダメでした
# ソートしたやつを使ってn/2かn/2+1かを判断する

n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
arr_sort = arr.sort
one, two = arr_sort[n/2-1], arr_sort[n/2]
arr.each do |ai|
  # sputs "{ai} vs {one}"
  if ai<=one
    puts two
  else
    puts one
  end
end