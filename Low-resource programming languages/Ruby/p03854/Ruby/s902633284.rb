S = gets.chomp.split("")
s_rev = S.reverse
s_con = s_rev.inject(:+)

N = S.length + 1
subs = ["maerd", "remaerd", "esare", "resare"]

N.times {
subs.each do |sub|
if s_con.start_with?(sub)
  s_con.slice!(0..sub.length - 1)
end
end
}

if s_con == ""
  puts "YES"
else
  puts "NO"
end