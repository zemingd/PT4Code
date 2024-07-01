d, n = gets.split.map(&:to_i)

if n != 100
	p n * 100 ** d
else
  	p n * 100 ** (d+1)