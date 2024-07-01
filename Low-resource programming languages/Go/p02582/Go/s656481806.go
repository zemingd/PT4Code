package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	const maxCapacity = 512 * 1024
	buf := make([]byte, maxCapacity)
	scanner.Buffer(buf, maxCapacity)

	var s string
	scanner.Scan()
	fmt.Sscan(scanner.Text(), &s)

	var cnt, max int
	for i := 0; i < len(s); i++ {
		if string(s[i]) == "R" {
			cnt++
		} else {
			cnt = 0
		}
		if cnt > max {
			max = cnt
		}
	}
	fmt.Println(max)
}
