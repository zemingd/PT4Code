package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	o := map[int]int{}
	n := func() int { stdin.Scan(); i, _ := strconv.Atoi(stdin.Text()); return i }()
	for i := 0; i < n; i++ {
		o[func() int { stdin.Scan(); i, _ := strconv.Atoi(stdin.Text()); return i }()]++
	}
	fmt.Println(len(o))
}