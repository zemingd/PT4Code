package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)
	sc.Split(bufio.ScanWords)
	a, _ := strconv.Atoi(Scanner())
	b, _ := strconv.Atoi(Scanner())
	c, _ := strconv.Atoi(Scanner())
	if (a+b-c)*(a+b-c) > 4*a*b {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
