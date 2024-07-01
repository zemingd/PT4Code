package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanInit()

	n := nextInt()
	a := make([]int, n)

	fsum := 0
	a[0] = nextInt()
	top := a[0]
	for i := 1; i < n; i++ {
		a[i] = nextInt()

		if a[i] < a[i-1] {
			fsum += top - a[i]
		} else {
			if a[i] < top {
				fsum += top - a[i]
			} else {
				top = a[i]
			}
		}
	}

	fmt.Println(fsum)

}

// ---- readfunc
var sc = bufio.NewScanner(os.Stdin)

func scanInit() {
	const cap = 200 * 1024 // default=64*1024
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
