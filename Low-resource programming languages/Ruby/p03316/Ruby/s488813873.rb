n=gets
m=n.split("").map(&:to_i).inject(&:+)
puts n.to_i%m==0?"Yes": "No";