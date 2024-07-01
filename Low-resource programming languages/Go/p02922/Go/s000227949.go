package main

import "fmt"

func main() {
	var a int
	var b int
	fmt.Scanf("%d %d", &a, &b)
	if b != 1 {
		i := 1
		c := i * a
		for {
			if c >= b {
				break
			}
			i++
			c = i*a - (i - 1)
		}
		fmt.Println(i)
	} else {
		fmt.Println(0)
	}
}