package main

import "fmt"

func main() {
	var r, g, b int
	fmt.Scan(&r, &g, &b)
	n := r*100 + g*10 + b
	if n%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
