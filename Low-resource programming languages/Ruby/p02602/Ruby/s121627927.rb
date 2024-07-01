nk = gets.split(" ").map(&:to_i)
n = nk[0]
k = nk[1]
num = gets.split(" ").map(&:to_i)

score = []
for i in k..n
  s = 1
  k.times do |j|
    s = s * num[i - j - 1]
  end
  score << s
end

i = 0
while i < score.length - 1 do 
	if(score[i + 1] > score[i])
    	puts "Yes"
    else
      puts "No"
    end
  i = i + 1
end
