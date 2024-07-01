h,a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
puts b.inject(&:+)>=h ? "Yes" : "No"