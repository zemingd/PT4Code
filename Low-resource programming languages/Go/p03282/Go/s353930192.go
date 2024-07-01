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
	//lastday := 5000 * 1000 * 1000 * 1000 //5*10^12
	s := nextStr()
	k := nextInt64()

	// 1なら終了
	if k <= int64(len(s)) {
		only1 := true
		for i := 0; int64(i) < k; i++ {
			if s[i] != '1' {
				only1 = false
			}
		}
		if only1 == true {
			fmt.Println(1)
			return
		}
	}

	for i := 0; i < len(s); i++ {
		if s[i] != '1' {
			fmt.Println(string(s[i]))
			return
		}
	}

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
func nextInt64() int64 {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return i
}
