a,b=gets.split.map(&:to_i)
s=gets.chop
pt="^\\d{#{a}}-\\d{#{b}}$"
r=s.sub!(/#{pt}/, '')
puts r ? :Yes : :No
