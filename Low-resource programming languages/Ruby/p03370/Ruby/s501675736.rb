input = gets
shurui = input.split(" ")[0].to_i
kona = input.split(" ")[1].to_i
lst = []
sum = 0
for i in 0..shurui - 1
  tmp = gets.chomp.to_i
  lst.push(tmp)
  sum = sum + tmp
end

min = lst.min
maxkazu = shurui + (kona - sum)/min
print maxkazu
print("\n")
