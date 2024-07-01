def opecode?(str)
  if (str=="+" || str=="-" || str=="/" || str=="*")
    true
  end
end

def calculation(nums,ope)
  if nums.size == 2
    if ope == "+"
      res = nums[0]+nums[1]
    elsif ope == "-"
      res = nums[0]-nums[1]
    elsif ope == "/"
      res = nums[0]/nums[1]
    else
      res = nums[0]*nums[1]
    end
    nums.delete_at(0)
    nums.delete_at(0)
    nums.insert(0,res)
  else
    if ope == "+"
      res = nums[-2]+nums[-1]
    elsif ope == "-"
      res = nums[-2]-nums[-1]
    elsif ope == "/"
      res = nums[-2]/nums[-1]
    else
      res = nums[-2]*nums[-1]
    end
    nums.delete_at(-1)
    nums.delete_at(-1)
    nums.insert(-1,res)
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