s = gets.chomp.split("")
first_a_index = s.index("A")
first_z_index = s.rindex("Z")
print("#{first_z_index - first_a_index+1}")