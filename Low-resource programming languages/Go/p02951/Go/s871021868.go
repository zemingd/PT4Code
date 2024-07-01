package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	A, _ := strconv.Atoi(read())
	B, _ := strconv.Atoi(read())
	C, _ := strconv.Atoi(read())
	var ans int
	if C-A+B > 0 {
		ans = C - A + B
	} else {
		ans = 0
	}
	fmt.Printf("%v\n", ans)
}
