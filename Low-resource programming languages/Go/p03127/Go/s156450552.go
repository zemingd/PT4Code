package main

import (
	"fmt"
)

func gcd(a,b int)int{
		if b == 0{
			return a
		}
		return gcd(b, a%b)
}

func main() {
	var n int
	m := []int{}
	fmt.Scan(&n)
	
	for i:=0;i<n;i++{
		var a int
		fmt.Scan(&a)
		m=append(m,a)
	}

	min:=m[0]

	for i:=1;i<n;i++{
		min = gcd(min,m[i])
	}
	
	fmt.Println(min)
}