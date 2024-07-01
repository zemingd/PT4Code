package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scan_init()
	n := scanInt() % 1000
	if -(n-1000) < n {
		n = -(n-1000)
	}
	fmt.Println(n)
}

var sc = bufio.NewScanner(os.Stdin)

func scan_init() {
	sc.Split(bufio.ScanWords)
}
func scanInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
func scan() string {
	sc.Scan()
	return sc.Text()
}
