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

	k := nextInt()
	lcnt := 0
	ans := 0
	for i := 1; i < 1000000; i++ {
		fl := true
		si := fmt.Sprintf("%d", i)
		for j := 0; j < len(si)-1; j++ {
			diff := abs(int(si[j]) - int(si[j+1]))
			if diff > 1 {
				fl = false
				break
			}
		}
		if fl == true {
			lcnt++
			if lcnt == k {
				ans = i
				break
			}
		}
	}

	fmt.Println(ans)
}
func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
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
