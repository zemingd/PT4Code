require 'prime'


X = gets
Prime.each(1000000) do |prime|
  if prime >= X.to_i
    p prime
    break
  end
end