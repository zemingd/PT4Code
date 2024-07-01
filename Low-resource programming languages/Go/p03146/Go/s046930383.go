package main

import "fmt"

func main() {
	var s int
	fmt.Scan(&s)

	numExistMap := map[int]bool{}
	i := 2
	for {
		var n int
		if s%2 == 0 {
			n = s / 2
		} else {
			n = 3*s + 1
		}
		if numExistMap[n] {
			fmt.Println(i)
			return
		}
		numExistMap[n] = true
		s = n
		i++
	}
}
