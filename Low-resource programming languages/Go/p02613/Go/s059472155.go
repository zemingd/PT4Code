package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var n, ac, wa, tle, re int
	scanner.Scan()
	fmt.Sscan(scanner.Text(), &n)

	for i := 0; i < n; i++ {
		scanner.Scan()
		switch scanner.Text() {
		case "AC":
			ac++
		case "WA":
			wa++
		case "TLE":
			tle++
		default:
			re++
		}
	}

	fmt.Println("AC x", ac)
	fmt.Println("WA x", wa)
	fmt.Println("TLE x", tle)
	fmt.Println("RE x", re)
}
