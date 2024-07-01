X=gets.to_i

n=100

1.upto(10**18) do |year|
  n = (n * 1.01).floor
  if n >= X
    puts year
    exit
  end
end
