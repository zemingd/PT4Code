input_data = STDIN.gets
a_b_c = input_data.split(" ")
a_b_c.map(&:to_i)
ans = a_b_c.sort
print ans[0].to_s + " " + ans[1].to_s + " " + ans[2].to_s + "\n"