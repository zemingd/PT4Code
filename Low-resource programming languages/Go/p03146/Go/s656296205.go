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

	c := nextInt()
	m := map[int]int{}

	var i int
	for i = 2; i < 10000000; i++ {
		//fmt.Println(i, c, cl(c))
		if _, ok := m[cl(c)]; ok {
			break
		}
		m[cl(c)]++
		c = cl(c)
	}

	fmt.Println(i)

}
func cl(a int) int {
	if a%2 == 0 {
		return a / 2
	}
	return 3*a + 1

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
