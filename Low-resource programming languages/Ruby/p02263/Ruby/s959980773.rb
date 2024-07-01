def opecode?(str)
  if (str=="+" || str=="-" || str=="/" || str=="*")
    true
  end
end

def calculate_by_ope(num1,num2,ope)
  if ope == "+"
    res = num1+num2
  elsif ope == "-"
    res = num1-num2
  elsif ope == "/"
    res = num1/num2
  else
    res = num1*num2
  end
end

def remove_and_insert(nums,index,res)
  nums.delete_at(index)
  nums.delete_at(index)
  nums.insert(index,res)
end

def calculation(nums,ope)
  if nums.size == 2
    res = calculate_by_ope(nums[0],nums[1],ope)
    remove_and_insert(nums,0,res)
  else
    res = calculate_by_ope(nums[-2],nums[-1],ope)
    remove_and_insert(nums,-1,res)
  end
  nums
end

def stack_calc
  array = readline.split(/[[:space:]]/)
  num_array=[]
  ans = 0
  array.each do |val|
    if opecode?(val)
      ans = calculation(num_array,val)
    else
      num_array.push val.to_i
    end
  end
  ans
end

puts stack_calc