s=gets.chomp.split('')
t=gets.chomp.split('')
puts s.min<t.max ||(s.min==t.max&&s.size<t.size)? :Yes: :No