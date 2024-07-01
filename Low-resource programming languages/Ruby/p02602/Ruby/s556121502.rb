n, k = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
s = []
score = []
scr = a[0..(k-1)].inject(1){|r,a|r*a}
score[k-1] = scr
l = 0
(k).upto(n-1) do |i|
  scr = (scr / a[l]) * a[i]
  score[i] = scr
  l += 1
  if score[i] > score[i-1]
    puts "Yes"
  else
    puts "No"
  end
end