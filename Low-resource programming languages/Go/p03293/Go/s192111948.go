package main

import "fmt"

func check(s, t string) bool {
OUTER:
	for num_rot := 0; num_rot < len(s); num_rot++ {
		for i := range s {
			if s[i] != t[(i+num_rot)%len(t)] {
				continue OUTER
			}
		}
		return true
	}
	return false
}

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	if check(s, t) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
	