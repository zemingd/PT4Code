require 'prime'

X = gets.to_i

X.downto(1) do |i|
  pd = i.prime_division
  if pd.size == 0 || pd.size == 1 && pd[0][1] >= 2
    puts i
    exit
  end
end