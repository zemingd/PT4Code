package main

import "fmt"

func main() {
	var n int
	fmt.Scanln(&n)
	table := make(map[int]bool)
	for i := 1; i < 10; i++ {
		for j := 1; j < 10; j++ {
			table[i*j] = true
		}
	}
	ans := "No"
	if table[n] {
		ans = "Yes"
	}
	fmt.Println(ans)
}