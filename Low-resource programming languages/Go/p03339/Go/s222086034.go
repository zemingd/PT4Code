package main

import (
	"bufio"
	"fmt"
	"strconv"
)

func main() {
	var (
		str string
		n   int
	)
	fmt.Scan(&n)
	fmt.Scan(&str)

	result := n
	for i := 1; i < n-1; i++ {
		count := diffCount(str[0:i-1], 'E')
		count += diffCount(str[i+1:n], 'W')
		result = min(result, count)
	}
	fmt.Println(result)
}

func diffCount(str string, char byte) int {
	count := 0
	for i := range str {
		if str[i] != char {
			count++
		}
	}
	return count
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}