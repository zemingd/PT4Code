y,m,d=gets.split.map(&:to_i)
juge=y*10000+m*100+d
puts juge<=20190440 ? "Heisei" : "TBD"