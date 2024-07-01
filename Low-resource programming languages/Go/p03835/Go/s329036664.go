package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanInit()

	k := nextInt()
	s := nextInt()
	cnt := 0
	for i := 0; i <= k; i++ {
		for j := 0; j <= k; j++ {
			m := s - i - j
			if m >= 0 && m <= k {
				cnt++
			}
		}
	}

	fmt.Println(cnt)

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
