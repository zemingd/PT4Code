package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	var s string
	fmt.Scan(&s)

	rs := []rune(s)
	n := len(rs)
	ans := n
	for i := 0; i < n-1; i++ {
		if rs[i] != rs[i+1] {
			continue
		}
		ans--
		i += 2
	}
	fmt.Println(ans)
}
