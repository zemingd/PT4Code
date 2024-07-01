package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	var s string
	re := regexp.MustCompile(`(A.*Z)`)
	max := 0

	scanner.Scan()
	s = scanner.Text()

	for _, x := range re.FindAllString(s, -1) {
		l := len(x)
		if l > max {
			max = l
		}
	}

	fmt.Println(max)
}