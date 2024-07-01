package main

import "fmt"

func main() {
	var s int
	fmt.Scan(&s)
	for i := 1; i < 1000001; i++ {
		if s == 4 || s == 2 || s == 1 {
			fmt.Println(i + 3)
			return
		}
		if s%2 == 0 {
			s /= 2
		} else {
			s = 3*s + 1
		}
	}
}
