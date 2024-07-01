n, k = gets.split(" ").map(&:to_i)
a = [nil] + gets.split(" ").map(&:to_i)
score = []
k.upto(n) do |i|
  s = 1
  (i-k+1).upto(i) do |m|
    s *= a[m]
  end
  score[i] = s
end

2.upto(n) do |i|
 if score[i] && score[i-1]
   if score[i] > score[i-1]
     puts "Yes"
   else
     puts "No"
   end
 end
end