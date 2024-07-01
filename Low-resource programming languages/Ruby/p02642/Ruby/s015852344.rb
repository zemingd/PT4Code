N = $stdin.gets.to_i
A = $stdin.gets.split.map {|i| i.to_i }
A.sort!
Am = {}
A.each do |a|
  Am[a] ||= 0
  Am[a] += 1
end
Ama = Am.to_a
AmaLen = Ama.length
#$stderr.puts Ama.to_s
cnt = 0
0.upto(AmaLen - 1) do |i|
  ai, ci = Ama[i]
  if ci > 1
    next
  end
  #$stderr.print "#{ai}:"
  inc = 1
  0.upto(i - 1) do |j|
    aj, = Ama[j]
    #$stderr.print " #{aj}#{ai.divmod(aj)}"
    d, m = ai.divmod(aj)
    if m == 0
      inc = 0
      #$stderr.print " *"
      break
    elsif d == 1
      #$stderr.print " |"
      break
    end
  end
  #$stderr.puts " #{inc}"
  cnt += inc
end
puts cnt
