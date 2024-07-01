package main

import "fmt"

func main() {
	var s int
	fmt.Scan(&s)

	count := 0
	for {
		count++
		if s == 1 || s == 2 || s == 4 {
			fmt.Println(count + 3)
			break
		}
		if s%2 == 0 {
			s /= 2
		} else {
			s = 3*s + 1
		}
	}
}
