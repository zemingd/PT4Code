def read_input
  gets.to_i
end

def output?(x)
  return true if x % 3 == 0
  x.to_s.include?("3")
end

n = read_input
puts (1..n).select{|x| output?(x)}.join(" ")