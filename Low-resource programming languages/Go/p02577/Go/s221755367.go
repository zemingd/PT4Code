package main

import "fmt"

func main() {
	var n string
	fmt.Scan(&n)
	var sum int
	sum = 0
	for _, c := range n {
		sum = sum + int(c)
	}
	if sum%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}