$n = gets.chomp.to_i
$score = []
$n.times do
  $score << gets.chomp.to_i
end

$dp = {}

$dp["0"] = [0]
def dfsc(i,j)
  if i >= $n
    return
  end
  $dp["#{i+1}"] ||= []
  $dp["#{i+1}"] << j #] ||= true
  $dp["#{i+1}"] << j+$score[i]#"] ||= true
  dfsc(i+1,j)
  dfsc(i+1,j+$score[i])
end

dfsc(0,0)

sum = 0
$dp.each do |k,v|
  val = v.reject{|s| s % 10 == 0}.max
  next if val.nil?
  sum = (sum > val) ? sum : val
end

puts sum
