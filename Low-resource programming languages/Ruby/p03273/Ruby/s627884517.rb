a=[]
gets.split.map(&:to_i)[0].times{
  if !(aa=gets.chomp.chars).count('#').zero?
    a<< aa
  end
  }
a.transpose.delete_if{|i|
  i.count('#').zero?
}.transpose.each{|i|
  puts i.join
}