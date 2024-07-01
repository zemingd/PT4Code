package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	s := nextLine()
	v := strings.ToUpper(s)
	if s == v {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}
