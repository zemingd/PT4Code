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
	f := true
	for i := 0; i < n; i++ {
		a, _ := strconv.Atoi(stringLineScan())
		if a%2 == 0 {
			if a%3 != 0 && a%5 != 0 {
				f = false
				break
			}
		}
	}
	if f {
		fmt.Println("APPROVED")
	} else {
		fmt.Println("DENIED")
	}
}
