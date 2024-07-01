P,Q,R = gets.strip.split.map(&:to_i)

a=[P+Q,Q+R,R+P]


puts a.min
