n=gets.to_i
words=[]
n.times{words << gets.chomp}
if words.uniq.size!=n then puts "No";exit end
(n-1).times do |i|
  if words[i][-1]!=words[i+1][0]
    puts "No"
    exit
  end
end
puts "Yes"
