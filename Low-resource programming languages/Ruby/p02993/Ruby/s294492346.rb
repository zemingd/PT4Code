flg = true
gets.chars.each_cons(2) do |n|
  if n[0] == n[1]
    flg = false
  end
end

if flg
  'Good'
else
  'Bad'
end