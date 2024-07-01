package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)

	s := nextStr()
	t := nextStr()
	cnt := 0
	for i := 0; i < len(s); i++ {
		if s[i] != t[i] {
			cnt++
		}
	}

	fmt.Println(cnt)
}

// ---- readfunc
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
