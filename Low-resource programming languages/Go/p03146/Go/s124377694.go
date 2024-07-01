package main

import "fmt"

func main() {
	var s int
	fmt.Scan(&s)

	a := make(map[int]bool)
	a[s] = true
	for i := 2; ; i++ {
		if s%2 == 0 {
			s = s / 2
		} else {
			s = 3*s + 1
		}

		if a[s] {
			fmt.Println(i)
			return
		}
		a[s] = true
	}
}
