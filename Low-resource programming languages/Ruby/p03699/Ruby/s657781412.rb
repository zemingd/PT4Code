N = gets.to_i
s = N.times.map{ gets.to_i }
a = s.inject(:+)
st = s.select{|t|t%10!=0}
if st.empty? then
    a = 0
elsif a%10==0 then
    a = a-st.min
end
puts a