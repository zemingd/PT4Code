h = gets.to_i
def compute(h)
  if h == 1
    1
  else
    2 * compute(h>>1) + 1
  end
end

p compute(h)