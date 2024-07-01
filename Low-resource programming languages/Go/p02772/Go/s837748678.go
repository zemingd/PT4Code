package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	flag := true
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
		if a[i] % 2 == 0{
			if !(a[i] % 3 == 0 || a[i] % 5 == 0) {
				fmt.Println("DENIED")
				flag = false
			}
		}
	}

	if flag {
		fmt.Println("APPROVED")
	}
}