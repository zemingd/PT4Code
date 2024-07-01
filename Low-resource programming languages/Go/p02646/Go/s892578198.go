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

	a := nextInt()
	av := nextInt()
	b := nextInt()
	bw := nextInt()
	t := nextInt()

	if av <= bw {
		fmt.Println("NO")
		return
	}

	// t以内に追いつく
	if t*(av-bw) >= (b - a) {
		fmt.Println("YES")
		return
	}

	fmt.Println("NO")

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
