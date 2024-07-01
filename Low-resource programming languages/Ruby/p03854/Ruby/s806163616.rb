s = gets.chomp.reverse
T = ["maerd", "remaerd", "esare", "resare"]

until s.empty? do
  flg = true
  T.each{|t|
    if ! (/\A#{t}/ =~ s).nil? then
      s = s[t.size..-1]
      flg = false
    end
  }
  break if flg
end

puts s.empty? ? 'YES' : 'NO'
