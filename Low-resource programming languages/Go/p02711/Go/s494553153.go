package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	answer := is7contains(n)
	fmt.Println(answer)
}

func is7contains(n int) string {
	nStr := strconv.Itoa(n)
	for i := 0; i < len(nStr); i++ {
		if d, _ := strconv.Atoi(string(nStr[i])); d == 7 {
			return "Yes"
		}
	}
	return "No"
}
