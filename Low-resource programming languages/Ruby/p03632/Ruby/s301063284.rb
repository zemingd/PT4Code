a,b,c,d=gets.split.map(&:to_i)
p (b<c||d<a)?0:((b<d)?b:d)-((a<c)?c:a)