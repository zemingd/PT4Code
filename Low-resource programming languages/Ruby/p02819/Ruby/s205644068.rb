require 'prime'

X = gets.to_i

X.upto(10**9) do |x|
  if x.prime?
    puts x
    exit
  end
end
