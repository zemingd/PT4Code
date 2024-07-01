a,b=gets.split.map(&:to_i)
ans=-1
(1..1250).each{|i|(ans=i; break) if (i*0.08).floor==a&&(i*0.1).floor==b}
puts ans