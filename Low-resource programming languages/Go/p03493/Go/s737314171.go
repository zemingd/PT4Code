package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	var s = strings.Split(sc.Text(), "")

	var count int

	if s[0] == "1" {
		count++
	}
	if s[2] == "1" {
		count++
	}
	if s[1] == "1" {
		count++
	}

	fmt.Println(count)
}
