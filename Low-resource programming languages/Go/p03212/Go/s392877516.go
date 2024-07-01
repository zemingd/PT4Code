package main

import (
	"fmt"
	"strconv"
	"strings"
)

func count(s string, N int) int {
	if is, _ := strconv.Atoi(s); is > N {
		return 0
	}

	ans := 0
	if strings.Count(s, "7")*strings.Count(s, "5")*strings.Count(s, "3") > 0 {
		ans = 1
	}
	for _, c := range "753" {
		ans += count(s+string(c), N)
	}
	return ans
}

func main() {
	var N int
	fmt.Scan(&N)

	fmt.Println(count("", N))
}
