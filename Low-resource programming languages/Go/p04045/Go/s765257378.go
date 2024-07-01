package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n int
	var k int
	fmt.Scanf("%d %d", &n, &k)
	d := make([]string, k)
	for i := 0; i < len(d); i++ {
		fmt.Scanf("%s", &d[i])
	}

	var result int
	for i := 0; ; i++ {
		result = i + n
		_result := strconv.Itoa(result)
		if !include(_result, d) {
			break
		}
	}

	fmt.Println(result)
}

func include(s string, d []string) bool {
	for i := 0; i < len(d); i++ {
		if strings.Contains(s, d[i]) {
			return true
		}
	}
	return false
}
