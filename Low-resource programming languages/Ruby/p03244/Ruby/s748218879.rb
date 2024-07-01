N=readline.to_i
vs = readline.chomp.split.map(&:to_i)

evens = []
odds = []
(N/2).times do |i|
  evens << vs[i*2]
  odds << vs[i*2+1]
end

e_count = {}
o_count = {}
evens.each {|v| e_count[v] = e_count[v].to_i + 1 }
odds.each {|v| o_count[v] = o_count[v].to_i + 1 }
e_count = e_count.sort_by {|k,v| v }.reverse
o_count = o_count.sort_by {|k,v| v }.reverse

#pp e_count, o_count
if e_count[0][0] != o_count[0][0]
  puts N - (e_count[0][1] + o_count[0][1])
else
  e_count.each_with_index do |ev,i|
    ov = o_count[i]
    if ev[1] > ov[1]
      puts N/2-(ev[1]) + N/2-(o_count[0][1])
      break
    elsif ev[1] < ov[1]
      puts N/2-(ov[1]) + N/2-(e_count[0][1])
      break
    end
  end
  if e_count.size > 1
    puts N/2-(e_count[1][1]) + N/2-(o_count[0][1])
  else
    puts N/2 + N/2-(o_count[0][1])
  end
end

