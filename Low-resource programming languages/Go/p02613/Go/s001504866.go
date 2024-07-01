package main

import (
	"fmt"
	"strconv"
)

func main() {
	var N int
	fmt.Scan(&N)

	list := make([]string, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&list[i])
	}

	count := make([]int, 4)
	for i := 0; i < N; i++ {
		switch list[i] {
		case "AC":
			count[0] += 1
		case "WA":
			count[1] += 1
		case "TLE":
			count[2] += 1
		case "RE":
			count[3] += 1
		}
	}
	fmt.Println("AC x " + strconv.Itoa(count[0]))
	fmt.Println("WA x " + strconv.Itoa(count[1]))
	fmt.Println("TLE x " + strconv.Itoa(count[2]))
	fmt.Println("RE x " + strconv.Itoa(count[3]))
}