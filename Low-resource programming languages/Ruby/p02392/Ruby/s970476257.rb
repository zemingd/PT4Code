a,b,c=STDIN.gets.split.map(&:to_i)

s=if a < b && b < c then
    "Yes"
  else
    "No"
  end

puts s