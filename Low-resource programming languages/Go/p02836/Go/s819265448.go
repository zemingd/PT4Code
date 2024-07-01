package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wtr = bufio.NewWriter(os.Stdout)
)

func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	s := scanText()

	ans := 0
	n := len(s)

	for i := 0; i < n/2; i++ {
		if s[i] != s[n-1-i] {
			ans++
		}
	}

	fmt.Println(ans)
}
