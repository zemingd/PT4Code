N = gets.to_i
x = []
k = 0
cnt = 0
N.times do
  x[k] = gets.strip.split("")
  k +=1
end

(x).each_with_index do |item, i|
  x.each_with_index do |item, j|
    cnt += 1 if x[i].sort == x[j].sort
    p x[i].sort
    p x[j].sort
    puts
  end
end
puts (cnt-N)/2