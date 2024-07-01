n=gets.chomp
a = n.split("").map { |e| e.to_i  }
n.to_i

def s(a)
  var=0
  a.length.times do |i|
    var += a[i]
  end

  return var
end

if n%s(a) !=0
  puts "Yes"
else
  puts "No"
end