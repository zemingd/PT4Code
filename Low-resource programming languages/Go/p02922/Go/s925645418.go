package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	for i := 1; ; i++ {
		n := a + (a-1)*(i-1)
		if n >= b {
			fmt.Println(i)
			return
		}
	}
}
