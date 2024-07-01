package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func min(a, b int) int {
	if a >= b {
		return b
	}else{
		return a
	}
}

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	s := stdin.Text()

	c0 := strings.Count(s, "0")
	c1 := strings.Count(s, "1")
	fmt.Println(min(c0, c1)*2)
}
