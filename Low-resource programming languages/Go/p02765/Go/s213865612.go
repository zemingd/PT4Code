package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	var score int
	fmt.Scan(&score)

	if n <= 10 {
		score = score + 100*(10-n)
	}
	fmt.Println(score)
}
