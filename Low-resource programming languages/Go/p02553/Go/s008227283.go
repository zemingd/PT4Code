package main

import "fmt"

func main() {
	var a, b, c, d int
	var ans = 0
	fmt.Scanln(&a, &b, &c, &d)

	for i := a; i <= b; i++ {
		for j := c; j <= d; j++ {
			if ans <= i*j {
				ans = i * j
			}
		}
	}
	fmt.Println(ans)
}
