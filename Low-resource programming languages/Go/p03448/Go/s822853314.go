package main

import(
	"fmt"
)

func main() {
		var a int
		var b int
		var c int
		var x int
		var count int
		count = 0

		fmt.Scan(&a)
		fmt.Scan(&b)
		fmt.Scan(&c)
		fmt.Scan(&x)

		for i := 0; i < a+1; i++ {
				for s := 0; s < b+1; s++ {
						for t := 0; t < c+1; t++ {
								if (500*i + 100*s + 50*t) == x {
										count++
								}
						}
				}
		}
		fmt.Println(count)
}