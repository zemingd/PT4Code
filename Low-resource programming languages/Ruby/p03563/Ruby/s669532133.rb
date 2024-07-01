s_array = gets.chomp!.split("")
t = gets.chomp!.split("")
t_array = t.clone
change = -1
t.length.times do |i|
  s_array.length.times do |j|
    #p "#{t[0]} #{s_array[j]} #{s_array[j] == t[i]}"
    if s_array[j] == t[0] and (s_array.length - j) >= t.length 
      (t.length).times do |k|
        #p k
        #p "#{s_array[j+k]}  #{t[k]}"# and s_array[i+k] != "?"
        if s_array[j+k] != t[k] and s_array[j+k] != "?"
          break
        end
        #p "#{k} #{t.length-1}"
        if k == (t.length-1)
          change = j
        end
      end
    end
  end
  t[i] = "?"
  #p t
end
if change == -1
  puts "UNRESTORABLE"
else
  #p s_array
  #p change
  t_array.each do |c|
    s_array[change] = c
    change += 1
  end
  puts s_array.collect{|c| if c == "?" then "a" else c end}.join
end