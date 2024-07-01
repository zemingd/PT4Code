package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	const maxCapacity = 512 * 1024
	buf := make([]byte, maxCapacity)
	scanner.Buffer(buf, maxCapacity)

	var s string
	scanner.Scan()
	fmt.Sscan(scanner.Text(), &s)
	fmt.Println(strings.Count(s, "R"))
}
