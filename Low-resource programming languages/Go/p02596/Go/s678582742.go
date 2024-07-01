package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)

	K := nextInt()

	a := 0
	i := 1
	for {
		pre := a
		a = (10*a + 7) % K
		if a == 0 {
			fmt.Println(i)
			return
		} else if pre == a {
			fmt.Println(-1)
			return
		}
		i++
	}
}
