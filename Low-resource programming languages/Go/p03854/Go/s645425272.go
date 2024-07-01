package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	text := scanner.Text()

	ed := len(text)
	isYes := true
	for ed > 0 {
		if ed-5 > 0 && (text[ed-5:ed] == "dream" || text[ed-5:ed] == "erase") {
			ed = ed - 5
		} else if ed-6 > 0 && text[ed-6:ed] == "eraser" {
			ed = ed - 6
		} else if ed-7 > 0 && text[ed-7:ed] == "dreamer" {
			ed = ed - 7
		} else {
			isYes = false
			break
		}
	}

	if isYes {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
