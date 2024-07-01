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

	s := nextStr()

	idxA := -1
	idxZ := -1
	for i := 0; i < len(s); i++ {
		if idxA == -1 && s[i] == 'A' {
			idxA = i
		}
		if idxZ == -1 && s[len(s)-i-1] == 'Z' {
			idxZ = len(s) - i
		}
	}

	fmt.Println(idxZ - idxA)

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
