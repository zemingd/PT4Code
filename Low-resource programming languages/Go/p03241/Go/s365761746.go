package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(stringLineScan())
	m, _ := strconv.Atoi(stringLineScan())
	for i := n; i <= m; i++ {
		if m%i == 0 {
			fmt.Println(m / i)
			break
		}
	}
}
