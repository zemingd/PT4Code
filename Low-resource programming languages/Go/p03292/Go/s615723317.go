package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	mi, ma := 100000000, -1000000000
	for i := 0; i < 3; i++ {
		sc.Scan()
		x, _ := strconv.Atoi(sc.Text())
		if x < mi {
			mi = x
		}
		if x > ma {
			ma = x
		}
	}
	fmt.Println(ma - mi)
}
