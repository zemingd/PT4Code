package main

import "fmt"

func main() {
	var r, d, x int
	fmt.Scan(&r, &d, &x)
	sum := x
	for i := 0; i < 10; i++ {
		sum = r*sum - d
		fmt.Println(sum)
	}
}
