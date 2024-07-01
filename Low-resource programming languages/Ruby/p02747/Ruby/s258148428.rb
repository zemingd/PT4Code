S=gets.chomp.split("")
slen = S.length
hantei = false

(slen -1).times do |i|
  if S[i] == "h" && S[i+1] == "i"
    hantei = true
    break
  end
end

if hantei
  puts "Yes"
else
  puts "No"
end