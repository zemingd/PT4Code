a,b=gets.split.map(&:to_i)

ise=false
1.upto(3) do |c|
  if (a*b*c).odd? then
    ise=true
    break
  end
end

puts ise ? "Yes":"No"