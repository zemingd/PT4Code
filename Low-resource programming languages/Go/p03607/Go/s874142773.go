package main

import "fmt"

func main() {
	var N int
	var a int
	checkMap := make(map[int]bool)
	fmt.Scan(&N)

	for i := 0; i < N; i++ {
		fmt.Scan(&a)
		if checkMap[a] {
			delete(checkMap, a)
		} else {
			checkMap[a] = true
		}
	}
	fmt.Print(len(checkMap))
}
