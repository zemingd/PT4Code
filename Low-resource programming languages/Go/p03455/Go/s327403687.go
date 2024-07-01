package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var S string
	fmt.Scanln(&S)

	ans := do(S)

	fmt.Println(ans)
}

func do(S string) string {
	fields := strings.Fields(S)
	a, _ := strconv.Atoi(fields[0])
	b, _ := strconv.Atoi(fields[1])
	if (a*b)%2 == 0 {
		return "Even"
	} else {
		return "Odd"
	}
}
