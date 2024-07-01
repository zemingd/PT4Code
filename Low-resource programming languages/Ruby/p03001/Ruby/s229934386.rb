w,h,x,y = gets.chomp.split(' ').map(&:to_i)

if x == 0 || y == 0
  ans=w*h/2
  multiple = 0
else
  hor1 = (h-y) * w
  hor2 = y * w
  ans_h = [hor1,hor2].min

  ver1 = h*(w-x)
  ver2 = h*x
  ans_v = [ver1,ver2].min

  ans = [ans_h,ans_v].max
  multiple = ans_h == ans_v ? 1 : 0
end

print("#{ans} #{multiple}")

