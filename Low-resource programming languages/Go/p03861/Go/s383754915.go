package main

import "fmt"

func main() {
	var a, b, x, d int64
	d = 0
	fmt.Scanln(&a, &b, &x)
	for i := a; i <= b; i++ {
		if i%x == 0 {
			d++
		}
	}
	fmt.Println(d)
}
