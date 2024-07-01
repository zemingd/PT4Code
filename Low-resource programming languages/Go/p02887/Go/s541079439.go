package main

import "fmt"

func main() {
	var n int
	fmt.Scanln(&n)
	var s string
	fmt.Scanln(&s)
	ans := 0
	prev := ' '
	for _, r := range s {
		if r != prev {
			ans++
			prev = r
		}
	}
	fmt.Println(ans)
}