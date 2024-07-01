package main

import "fmt"

func main() {
	var x, y int

	_, _ = fmt.Scan(&x, &y)

	if turukame(x, y){
		fmt.Println("YES")
	}else {
		fmt.Println("NO")
	}
}

func turukame(x, y int) bool {
	var s int
	if y%2==1{
		return false
	}
	for i:=0;i<x+1;i++{
		s = 2*(x-i) + 4*(i)
		if y==s {
			return true
		}
	}
	return false
}