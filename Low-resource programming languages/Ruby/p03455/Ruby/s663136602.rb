# input
a,b=gets.chomp.split(" ").map(&:to_i);

# odd_or_even?
def odd_or_even?(a, b)
  timed_val = a * b
  
  if timed_val % 2 == 0
    'Even'
  else
    'Odd'
  end
end

# output
print("#{odd_or_even?(a, b)}\n")