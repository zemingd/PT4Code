package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	s.Scan()
	n, _ := strconv.Atoi(s.Text())
	s.Scan()
	a, _ := strconv.Atoi(s.Text())
	s.Scan()
	b, _ := strconv.Atoi(s.Text())

	if n*a > b {
		fmt.Println(b)
	} else {
		fmt.Print(a * n)
	}
}
