package main

import "fmt"

func main() {
	var n, t, x int
	_, _ = fmt.Scan(&n, &x, &t)

	if n%x==0 {
		fmt.Println((n/x)*t)
	}else {
		fmt.Println((n/x)*t+t)
	}
}
