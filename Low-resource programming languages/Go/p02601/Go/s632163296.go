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

	r := nextInt()
	g := nextInt()
	b := nextInt()
	k := nextInt()

	if r < g && g < b {
		fmt.Println("Yes")
		return
	}
	for i := 0; i < k; i++ {
		// rは放置
		// gがrより大きくなるまでgをふやす
		if r >= g {
			g *= 2
			if r < g && g < b {
				fmt.Println("Yes")
				return
			}
		} else if g >= b {
			b *= 2
			if r < g && g < b {
				fmt.Println("Yes")
				return
			}
		}

	}

	fmt.Println("No")

}

// ---- readfunc
func scanInit() {
	const cap = 64 * 1024
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
