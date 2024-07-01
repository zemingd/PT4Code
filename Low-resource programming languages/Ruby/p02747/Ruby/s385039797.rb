S=gets.chomp
slen = S.length
hantei = false

if slen % 2 == 0
  if "hi"*(slen/2) == S
    hantei = true
  end
end

if hantei
  puts "Yes"
else
  puts "No"
end