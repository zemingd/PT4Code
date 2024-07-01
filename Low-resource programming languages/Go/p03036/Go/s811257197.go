package main

import "fmt"

func main() {
	var r, d, x2000 int
	fmt.Scan(&r, &d, &x2000)

	last := x2000
	for i := 0; i < 10; i++ {
		last = r*last - d
		fmt.Println(last)
	}
}
