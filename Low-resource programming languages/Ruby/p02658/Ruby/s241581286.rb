gets;
nums = gets.split(" ").map(&:to_i);
prod = 1;
nums.each { |n| 
  prod = prod * n ; 
  if prod > 10**18 then 
	puts "-1";
    exit;
  end
};
puts prod;