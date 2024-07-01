package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func max(a int, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	input := strings.Split(scanner.Text(), " ")
	var args [4]int
	for i, str := range input {
		args[i], _ = strconv.Atoi(str)
	}
	candidates := [4]int{args[0] * args[2], args[0] * args[3], args[1] * args[2], args[1] * args[3]}
	var result int = candidates[0]
	for _, c := range candidates {
		result = max(result, c)
	}
	fmt.Printf("%d", int(result))
}
