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

	a0 := a[0]
	aN1 := a[len((a))-2]
	aN := a[len(a)-1]

	d1 := aN - a0
	d2 := k + a0 - aN

	if d1 <= d2 {
		fmt.Println(d1)
		return
	}
	fmt.Println(k - aN + aN1)
}
