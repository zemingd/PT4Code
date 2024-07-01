package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for sc.Scan() {
		a, _ := strconv.Atoi(sc.Text())
		var h, m, s int
		h, m = a/3600, a%3600
		m, s = m/60, m%60
		fmt.Printf("%d:%d:%d\n", h, m, s)
	}
}

