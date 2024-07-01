package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

func main() {
	sc.Split(bufio.ScanWords)
	a := make([]int, 5)
	for i := range a {
		a[i] = getInt()
	}

	ans := 0
	min := 10
	for _, v := range a {
		if v%10 == 0 {
			ans += v
		} else {
			ans += (v/10)*10 + 10
			if v%10 < min {
				min = v % 10
			}
		}
	}
	fmt.Println(ans - (10 - min))
}
