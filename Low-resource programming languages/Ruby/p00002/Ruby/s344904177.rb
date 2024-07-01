while input=gets do
  a,b=input.split(" ").collect do |x|
    x.to_i
  end
  puts (a+b).to_s.size
end