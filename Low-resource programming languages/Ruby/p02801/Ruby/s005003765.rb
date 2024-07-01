s = gets.chomp

alp = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

for i in 1..26 do
  if s == alp[i-1] then
    print alp[i]
  end
end