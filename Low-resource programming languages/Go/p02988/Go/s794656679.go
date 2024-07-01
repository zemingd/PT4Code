package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(read())
	a := make([]int, n)
	cnt := 0
	for i := 0; i < n; i++ {
		a[i], _ = strconv.Atoi(read())
		if i >= 2 {
			if (a[i-1]-a[i])*(a[i-2]-a[i-1]) >= 0 {
				cnt++
			}
		}
	}
	fmt.Println(cnt)
}
