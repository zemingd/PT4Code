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
	k, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	a := make([]int, n)
	for i := range a {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}
	if a[0] == 0 {
		a[0] = k
	}

	start := a[len(a)-1]
	res1 := start - a[0]
	res2 := start - a[len(a)-2]
	if res1 < res2 {
		fmt.Println(res2)
		return
	}
	fmt.Println(res1)
}
