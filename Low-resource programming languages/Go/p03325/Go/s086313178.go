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

	n := nextInt64()
	l := make([]int64, n)

	cnt := 0
	for i := int64(0); i < n; i++ {
		l[i] = nextInt64()
		div2 := 0
		for {
			if l[i]%2 == 0 {
				l[i] /= 2
				div2++
			} else {
				break
			}
		}
		//fmt.Println(l[i], " can by ", div2, " makes cnt ", cnt+div2)
		cnt += div2
	}

	fmt.Println(cnt)

}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // Default=64
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt64() int64 {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return i
}
