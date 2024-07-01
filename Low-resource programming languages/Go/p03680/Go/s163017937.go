package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func BufScan(n int) []string {
	var in []string
	sc := bufio.NewScanner(os.Stdin)
	for i := 0; i < n; i++ {
		sc.Scan()
		in = append(in, sc.Text())
	}

	return in
}

func IntBufScan(n int) []int {
	var inInts []int
	inStrings := BufScan(n)
	for _, i := range inStrings {
		tmp, _ := strconv.Atoi(i)
		inInts = append(inInts, tmp)
	}
	return inInts
}

func main() {
	n := 0
	fmt.Scanf("%d", &n)
	a := IntBufScan(n)
	m := 1
	for i := 1; ; i++ {
		m = a[m-1]
		if m == 1 || i > n {
			fmt.Println("-1")
			return
		}
		if m == 2 {
			fmt.Println(i)
			return
		}
	}
}
