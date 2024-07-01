n, k = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
s = []
score = []
s[0] = 1
1.upto(n) do |i|
  s[i] = s[i-1] * a[i-1]
end
(k-1).upto(n-1) do |i|
  score[i] = s[i+1] / s[i-k+1]
end

1.upto(n-1) do |i|
 if score[i] && score[i-1]
   if score[i] > score[i-1]
     puts "Yes"
   else
     puts "No"
   end
 end
end