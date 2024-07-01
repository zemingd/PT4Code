package main

import (
	"fmt"
)

func abs(a int)int {
	if a<0{
		return -a
	}
	return a
}


func main() {
	var L,R int
	fmt.Scan(&L,&R)
	
	ans := 2020
	for i:= 0; i<2019;i++ {
		l:=L+i
		if l>=R || l <0{
			break
		}
		for j:=0;j<2019;j++{	
			r := R - j
			if r<=L ||r<0{
				break
			}
			mod := abs((2019-l)*(2019-r)%2019)
			if ans > mod {
				ans = mod
			}
			if mod==0{
				break
			}
		}	
	}
	fmt.Println(ans)
}