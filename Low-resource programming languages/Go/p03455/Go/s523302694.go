package main

import (
	"bufio"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	strs := strings.Split(scanner.Text(), " ")
	a, _ := strconv.Atoi(strs[0])
	b, _ := strconv.Atoi(strs[1])

	if a&b&1 == 1 {
		print("Odd")
	} else {
		print("Even")
	}
}
