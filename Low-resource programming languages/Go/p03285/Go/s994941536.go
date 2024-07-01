package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	flag := false
	for c:=0; c<n; c++ {
		for d:=0; d<n; d++ {
			total := c*4 + d*7
			if total == n {
				flag = true
				break
			}
		}
	}
	if flag == true {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}