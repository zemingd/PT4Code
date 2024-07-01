N,*S = $<.map(&:to_i)
t = S.inject(0,&:+)
m = S.reject{|s| s % 10 == 0 }.min
puts (t % 10 != 0) ? t : (m ? t - m : 0)
