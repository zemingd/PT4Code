package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

/*
func nextLine() string {
	sc.Scan()
	return sc.Text()
}
*/
func nextInt() int {
	sc.Scan()
	num, _ := strconv.Atoi(sc.Text())
	return num
}

func main() {
	sc.Split(bufio.ScanWords)
	n, time := nextInt(), nextInt()
	c := make([]int, n)
	t := make([]int, n)
	for i := 0; i < n; i++ {
		c[i] = nextInt()
		t[i] = nextInt()
	}
	ans := 1001

	for i := 0; i < n; i++ {
		if t[i] <= time && c[i] < ans {
			ans = c[i]
		}
	}

	if ans == 1001 {
		fmt.Println("TLE")
	} else {
		fmt.Println(ans)
	}
}
