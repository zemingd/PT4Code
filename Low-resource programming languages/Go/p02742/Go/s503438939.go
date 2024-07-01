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

	h := nextInt()
	w := nextInt()

	if h%2 == 0 && w%2 == 0 {
		fmt.Println((h * w) / 2)
		return
	}
	if h%2 == 1 && w%2 == 0 {
		fmt.Println(h * (w / 2))
		return
	}
	if h%2 == 0 && w%2 == 1 {
		fmt.Println((h / 2) * w)
		return
	}
	//fmt.Println(h*(w/2) + int(math.Ceil(float64(h)/2)))
	fmt.Println(h*(w/2) + (h / 2) + 1)
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

