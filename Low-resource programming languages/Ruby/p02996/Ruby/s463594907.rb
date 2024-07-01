n = gets.chomp.to_i
a = []
b = []
worklist = []
nowtime = 0
n.times do |i|
  input = gets.chomp
  a[i],b[i] = input.split.collect{ |item| item.to_i}
  worklist[i] = [a[i],b[i]]
end

result = "Yes"
worklist.sort!{ |l,r| l[1] <=>r[1]}
worklist.each do |task|
  nowtime += task[0]
  if nowtime > task[1]
    result = "No"
  end
end

puts result