package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	ans := cal(a, b)
	fmt.Println(ans)
}

func cal(a, b int) int {
	ans := 0
	o := 1
	for i:=0;true;i++ {
		o = o - 1 + a
		if o >= b {
			break
		}
	}
	return ans
}