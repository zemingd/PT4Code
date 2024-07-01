package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"os"
)

var scanner = bufio.NewScanner(os.Stdin)

func nextLine() string {
	scanner.Scan()
	return scanner.Text()
}

func main() {
	input := nextLine()

	var n, x, t int
	if _, err := fmt.Sscanf(input, "%d %d %d", &n, &x, &t); err != nil {
		log.Fatalf("error reading input: %v", err)
	}

	fmt.Println(solve(n, x, t))
}

func solve(n, x, t int) int {
	return int(math.Ceil(float64(n)/float64(x))) * t
}
