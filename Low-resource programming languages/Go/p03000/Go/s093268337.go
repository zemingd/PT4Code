package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var sc = bufio.NewScanner(os.Stdin)

	var n, x int
	sc.Split(bufio.ScanWords)
	if sc.Scan() {
		n, _ = strconv.Atoi(sc.Text())
	}
	if sc.Scan() {
		x, _ = strconv.Atoi(sc.Text())
	}

	ball := 0
	ans := 0
	for i := 0; i < n; i++ {
		if sc.Scan() {
			l, _ := strconv.Atoi(sc.Text())
			ball += l
			ans++
		}
		if ball > x {
			break
		}
	}

	fmt.Println(ans)
}
