def ascan; gets.split.map(&:to_i);end

a,b,c,d = ascan

z = [b,d].min-[a,c].max

z = 0 if z<0

p z