package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
)

func nextLine() string {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	return scanner.Text()
}

func main() {
	S := nextLine()
	r := regexp.MustCompile(`^(eraser|erase|dreamer|dream)*$`)
	if r.MatchString(S) {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
