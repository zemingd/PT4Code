n,k=gets.split.map(&:to_i)
s=$*.tap{gets.each_char.with_index{|c,i|c!=$a&&$*<<[c.hex,i];$a=c}}
p s.map.with_index{|(a,b),i|(s[i+2*k+a]&.[](1)||n)-b}.max