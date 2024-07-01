io = STDIN
x=io.gets.chomp.to_i
def calc(x)
  if x%11==0
    (x/11)*2
  elsif (x%11<=5)
    (x/11)*2+1
  else
    (x/11)*2+2
  end
end
p calc(x)