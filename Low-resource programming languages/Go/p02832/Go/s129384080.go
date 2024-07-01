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

	frontnum := 1
	breaknum := 0
	for i := 0; i < n; i++ {
		tmp := nextInt()
		if tmp == frontnum {
			frontnum++
		} else {
			breaknum++
			if breaknum == n {
				fmt.Println("-1")
				return
			}
		}
	}

	fmt.Println(breaknum)

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
