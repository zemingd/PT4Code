package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	scanInit()

	n := nextInt()
	l := make([]int, n)
	ticket := 0
	l[0] = nextInt()
	for i := 1; i < n; i++ {
		l[i] = nextInt()
		if l[i-1]-l[i] >= 2 {
			fmt.Println("No")
			return
		}
		if l[i-1]-l[i] == 1 {
			if ticket == 0 {
				ticket = 1
			} else {
				fmt.Println("No")
				return
			}
		}
	}
	fmt.Println("Yes")
}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // Default=64
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
