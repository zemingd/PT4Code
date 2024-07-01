
def rec(x, i)
  return if x.zero?
  if x % 10 == 3
    @str += " " + i.to_s
  else
    x /= 10
    rec(x, i)
  end
end

val = gets.to_i
i = 1
@str = ""

while i <= val
  x = i
  if x % 3 == 0
    @str += " " + i.to_s
  else
    rec(x, i)
  end
  i += 1
end

puts @str