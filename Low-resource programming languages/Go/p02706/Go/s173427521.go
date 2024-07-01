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

func intScanner() int {
	n, _ := strconv.Atoi(Scanner())
	return n
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000007)
	sc.Split(bufio.ScanWords)
	n := intScanner()
	m := intScanner()
	for i := 0; i < m; i++ {
		n -= intScanner()
	}
	if n >= 0 {
		fmt.Println(n)
	} else {
		fmt.Println(-1)
	}
}
