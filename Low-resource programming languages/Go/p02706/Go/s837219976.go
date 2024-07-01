package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	var n, m, tmp int
	n, m = nextInt(), nextInt()
	ans := n

	for i := 0; i < m; i++ {
		tmp = nextInt()
		ans -= tmp
	}

	if ans < 0 {
		ans = -1
	}

	fmt.Println(ans)

}
