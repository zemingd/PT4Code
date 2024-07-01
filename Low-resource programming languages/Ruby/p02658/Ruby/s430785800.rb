n=gets.to_i
a=gets.split(' ').map(&:to_i)
pro=1
if a.include?(0)
  pro=0
else
  a.each do |ai|
    pro*=ai
    if(pro>10**18)
      pro=-1
      break
    end
  end
end
puts pro