package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	k, _ := strconv.Atoi(nextLine())
	s := nextLine()
	length := len(s)
	if length <= k {
		fmt.Println(s)
	} else {
		fmt.Printf("%v...\n", s[0:k])
	}
}
