package main

import (
	"bufio"
	"fmt"
	"os"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	stdin.Scan()
	s := stdin.Text()
	stdin.Scan()
	t := stdin.Text()
	c := 0
	for index := 0; index < 3; index++ {
		if s[index] == t[index] {
			c++
		}
	}
	fmt.Println(c)
}