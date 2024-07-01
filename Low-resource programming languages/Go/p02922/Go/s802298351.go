package main

import "fmt"

func main() {
	var a, b, n int
	fmt.Scan(&a, &b)
	for i := 1; ; i++ {
		if i == 1 {
			n = a
		} else {
			n = n + a - 1
		}
		if n >= b {
			fmt.Println(i)
			return
		}
	}
}
