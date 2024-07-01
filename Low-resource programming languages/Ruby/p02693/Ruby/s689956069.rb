K=gets.to_i
A,B = gets.split.map(&:to_i)

(A...B).each do |n|
  if n % K == 0
    puts :OK
    exit
  else
  end
end
    puts :NG
