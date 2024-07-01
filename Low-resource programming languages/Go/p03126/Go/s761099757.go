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
	_ = nextInt()
	//list := make([]int, n+1)
	sukimap := map[int]int{}

	for i := 0; i < n; i++ {
		nowk := nextInt()
		for j := 0; j < nowk; j++ {
			tmp := nextInt()
			sukimap[tmp]++
		}
	}

	cnt := 0
	for _, v := range sukimap {
		if v == n {
			cnt++
		}
	}

	fmt.Println(cnt)

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
