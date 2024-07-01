input_lines = readlines;
num = input_lines.length;

if num <= 200
  for i in 0..num-1 do
    data_set = input_lines[i].chomp.split(" ");
    a = data_set[0].to_i;
    b = data_set[1].to_i;
    if a>=0 && a<=1000000 && b>=0 && b<=1000000
      sum = a + b;
      keta = sum.to_s.length;
      puts keta;
    end
  end
end

