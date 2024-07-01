n,m=gets.split.map &:to_i
a=gets.chomp.split.map &:to_i
m.times do
  a.sort_by! {|ai|ai}
  a[-1]/=2
end
puts a.reduce &:+