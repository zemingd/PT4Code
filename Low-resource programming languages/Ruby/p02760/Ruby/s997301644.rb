a=[]
3.times do |i|
  a[i]=gets.split.map(&:to_i)
end
n=gets.to_i
n.times do
  b=gets.to_i
  3.times do |i|
    3.times do |j|
      if a[i][j]==b
        a[i][j]=0
      end
    end
  end
end
3.times do |i|
  if a[i][0]==0&&a[i][1]==0&&a[i][2]==0
    puts "Yes"
    exit
  end
end
3.times do |i|
  if a[0][i]==0&&a[1][i]==0&&a[2][i]==0
    puts "Yes"
    exit
  end
end
if a[0][0]==0&&a[1][1]==0&&a[2][2]==0
  puts "Yes"
  exit
end
if a[0][2]==0&&a[1][1]==0&&a[2][0]==0
  puts "Yes"
  exit
end
puts "No"

