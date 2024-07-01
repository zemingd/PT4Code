package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	a := make([]int, 9)
	for i := 0; i < 9; i++ {
		a[i] = nextInt()
	}
	n := nextInt()
	var b int
	for i := 0; i < n; i++ {
		b = nextInt()
		for j := 0; j < 9; j++ {
			if a[j] == b {
				a[j] = -1
			}
		}
	}

	ans := false
	if a[0] == -1 && a[1] == -1 && a[2] == -1 {
		ans = true
	}
	if a[3] == -1 && a[4] == -1 && a[5] == -1 {
		ans = true
	}
	if a[6] == -1 && a[7] == -1 && a[8] == -1 {
		ans = true
	}
	if a[0] == -1 && a[3] == -1 && a[6] == -1 {
		ans = true
	}
	if a[1] == -1 && a[4] == -1 && a[7] == -1 {
		ans = true
	}
	if a[2] == -1 && a[5] == -1 && a[8] == -1 {
		ans = true
	}
	if a[0] == -1 && a[4] == -1 && a[8] == -1 {
		ans = true
	}
	if a[2] == -1 && a[4] == -1 && a[6] == -1 {
		ans = true
	}

	if ans {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
