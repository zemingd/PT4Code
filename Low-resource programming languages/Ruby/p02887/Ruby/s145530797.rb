n = gets.to_i
s = gets.chomp.split("")
loop{
  fin = true
  if s.size == 1
    puts 1
    exit
  end
  (1..s.size-1).each{|i|
    if s[i] == s[i-1]
      s.delete_at(i)
      fin = false
    end
  }
  break if fin
}
puts s.size