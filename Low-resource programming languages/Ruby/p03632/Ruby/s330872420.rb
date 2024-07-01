#encoding: utf-8

intervalTime = STDIN.gets.split(" ").map(&:to_i);

if intervalTime[2] < intervalTime[1] then
	STDOUT.puts intervalTime[1] - intervalTime[2];
else
	STDOUT.puts "0";
end
