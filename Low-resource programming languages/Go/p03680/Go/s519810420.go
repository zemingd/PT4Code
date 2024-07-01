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
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	a := make([]int, n)
	for i := range a {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}
	c := 0
	for i := 0; i < n; i++ {
		c = a[c] - 1
		if c == 1 {
			fmt.Println(i + 1)
			return
		}
	}
	fmt.Println("-1")
}
