def check(s)
  s.each_with_index do |c,i|
    next if c.nil?
    return s if i == s.size-1
#    puts "c:#{c} i:#{i}"
    if c != s[i+1]
      s[i] = nil
      s[i+1] = nil
#      s.delete_at(i)
#      s.delete_at(i)
#      return s
    end
  end
end


s_org = gets.chomp.split("")

s = s_org.clone

while true
  tmp_s = s.clone
  ret_s = check(s)
#  puts "tmp_s : #{tmp_s}\nret_s : #{ret_s}"
  s.compact!
  break if tmp_s.size == ret_s.size || ret_s.size == 0
end

puts s_org.size - s.size