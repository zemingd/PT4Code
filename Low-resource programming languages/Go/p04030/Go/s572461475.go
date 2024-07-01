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
	ans := ""

	for i := 0; i < len(s); i++ {
		if s[i] == 'B' {
			if len(ans) > 0 {
				ans = ans[:len(ans)-1]
			}
		} else {
			ans += string(s[i])
		}
	}

	fmt.Println(ans)

}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // default=64*1024
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
