package main

import "fmt"

func main() {
	var s, prev int
	prev = -1
	for i := 0; i < 4; i++ {
		fmt.Scanf("%1d", &s)
		if prev == -1 {
			prev = s
		} else {
			if s == prev {
				fmt.Println("Bad")
				return
			}
			prev = s
		}
	}

	fmt.Println("Good")
}
