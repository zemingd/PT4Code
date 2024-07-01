s=gets
x,y=s=~/^..(0[1-9]|1[0-2]).$/,s=~/^(0[1-9]|1[0-2])...$/
puts x&&y ? :AMBIGUOUS : x ? :YYMM : y ? :MMYY : :NA