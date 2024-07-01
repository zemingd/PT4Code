x,n=gets.split.map &:to_i
if n==0
  bs=[*0..100]
else
  as=gets.split.map &:to_i
  bs=[*0..100]-as
end
p bs.min_by{|i|(i-x).abs} 