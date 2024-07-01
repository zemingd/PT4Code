package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() (int, error) {
	sc.Scan()
	s := sc.Text()
	return strconv.Atoi(s)
}

func main() {
	sc.Split(bufio.ScanWords)

	a, _ := nextInt()
	b, _ := nextInt()
	c, _ := nextInt()

	if a < b && b < c {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

