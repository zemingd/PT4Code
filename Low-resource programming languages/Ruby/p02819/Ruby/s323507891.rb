require 'prime'

X = gets.to_i
i = X
loop do
  if Prime.prime?(i)
    p i
    exit 0
  end

  i += 1
end
