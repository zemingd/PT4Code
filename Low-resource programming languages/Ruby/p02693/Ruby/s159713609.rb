k = $stdin.gets.chomp.to_i
a,b=gets.chomp.split(" ").map(&:to_i);
flag = 0
a.step(b) do |l|
  if l % k == 0
    flag = 1
    break
  end
end

flag == 1 ? puts("OK"):puts("NG")
