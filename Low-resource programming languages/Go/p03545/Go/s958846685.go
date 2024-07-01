package main

import (
	"fmt"
	"strconv"
)

func cal(a int, b int, o string)int {
	if o=="+"{
		return a+b
	} 
	return a-b
}

func main() {
	var s string
	var sum int
	var o1,o2,o3 string
	fmt.Scan(&s)
	a,_:= strconv.Atoi(string(s[0]))
	b,_:= strconv.Atoi(string(s[1]))
	c,_:= strconv.Atoi(string(s[2]))
	d,_:= strconv.Atoi(string(s[3]))
	op:=[]string{"+","-"}
	
	for i:=0;i<2;i++{
		for j:=0;j<2;j++{
			for k:=0;k<2;k++{
				sum = cal(a, b, op[i])
				sum = cal(sum, c, op[j])
				sum = cal(sum, d, op[k])
				if sum == 7 {
					o1,o2,o3 = op[i],op[j],op[k]
					break
				}
			}			
		}
	}
	fmt.Printf("%d%s%d%s%d%s%d=7\n",a,o1,b,o2,c,o3,d)
}