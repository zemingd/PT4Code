a,b,c,d=gets.chomp.split(" ").map { |e| e.to_i }


def abs(n)

  if n>=0
    return n
  else
    return -n
  end

end


if abs(a-b) <= d && abs(b-c) <= d
    puts "Yes"
else
    puts "No"
end
