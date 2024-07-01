package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	iv, _ := strconv.Atoi(sc.Text())
	return iv
}

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	_, n := scanInt(), scanInt()
	a := make([]int, n)
	for i := range a {
		a[i] = scanInt()
	}
	fmt.Println(a[n-1] - a[0])
}
