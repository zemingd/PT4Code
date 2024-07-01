n=gets.chop[-1].to_i
puts (n==3 ? :bon : (n<=1||n==6||n==8 ? :pon : :hon))