package main

import "fmt"

var r, g, b int

func main() {
	fmt.Scan(&r, &b, &g)
	if (r*100+b*10+g)%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
