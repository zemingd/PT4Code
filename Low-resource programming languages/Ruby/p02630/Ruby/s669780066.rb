n=gets.to_i
 line=gets.split(' ').map(&:to_i)
q=gets.to_i
lines = readlines(chomp: true).map{|line| line.split(' ').map(&:to_i)}
 a=line.inject(:+)
q.times do |i|


puts a+=line.count(lines[i][0])*(lines[i][1]-lines[i][0])

  line.count(lines[i][0]).times do
    line.push(lines[i][1])
 
    line.delete(line[i][0])
  end
end
 
