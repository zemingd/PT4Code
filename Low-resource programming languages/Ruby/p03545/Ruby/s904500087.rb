l = [0,0,0,0]
s = gets.chomp
4.times { |i| l[i] = s[i].to_i }
finish = false
result = ""
["+","-"].each do |fst|
  ["+","-"].each do |snd|
    ["+","-"].each do |trd|
      ans = l[0].send(fst,l[1])
      ans = ans.send(snd,l[2])
      ans = ans.send(trd,l[3])
      if ans == 7
        result = "#{l[0]}#{fst}#{l[1]}#{snd}#{l[2]}#{trd}#{l[3]}=7"
        finish = true
      end
      break if finish
    end
    break if finish
  end
  break if finish
end
print result,"\n"
