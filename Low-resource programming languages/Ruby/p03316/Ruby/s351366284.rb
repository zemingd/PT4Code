n=gets.chomp
a = n.split("").map { |e| e.to_i  }
n=n.to_i

def s(a)
  var=0
  a.length.times do |i|
    var += a[i]
  end

  return var
end


b=0
b=s(a)


if n%b !=0
  puts "No"
else
  puts "Yes"
end