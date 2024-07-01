n,k = gets.split
h = gets.split.map(&:to_i)
a = ((0..9).to_a - h).repeated_permutation(4).map(&:join).map(&:to_i)
a.each{|i|
  if i >= n.to_i
    puts i 
    exit
  end
}