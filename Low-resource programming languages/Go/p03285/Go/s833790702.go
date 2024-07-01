package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	found := false
	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			s := 4*i + 7*j
			if s == n {
				found = true
			}
		}
	}
	if found {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
