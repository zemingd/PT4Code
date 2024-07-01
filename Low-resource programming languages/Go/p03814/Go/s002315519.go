package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	var s string

	scanner.Scan()
	s = scanner.Text()

	fmt.Println(strings.LastIndex(s, "Z") - strings.Index(s, "A") + 1)
}
