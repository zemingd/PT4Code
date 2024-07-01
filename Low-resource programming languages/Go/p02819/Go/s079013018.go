package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	n := int(1e5) + 100
	x := getInt()
	ps := furui(n)

	var ans int
	for i, p := range ps {
		if x > i {
			continue
		}

		if p == 1 {
			ans = i
			break
		}
	}
	fmt.Fprintln(wr, ans)
}

func furui(n int) []int {
	ns := make([]int, n+1)
	for i := range ns {
		ns[i] = 1
	}
	ns[0], ns[1] = 0, 0

	for i := 2; i*i <= n; i++ {
		if ns[i] == 1 {
			for j := i * 2; j <= n; j += i {
				ns[j] = 0
			}
		}
	}
	return ns
}

// -----------------------------------------

const (
	inf = 1 << 60
	// mod = 1000000007
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wr = bufio.NewWriter(os.Stdout)
)

func main() {
	maxBufSize := int(1e8)
	sc.Buffer(make([]byte, 4096), maxBufSize)
	sc.Split(bufio.ScanWords)
	solve()
	wr.Flush()
}

func getInt() (ret int) {
	sc.Scan()
	ret, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return
}

func getIntSlice(n int) (ret []int) {
	ret = make([]int, n)
	for i := range ret {
		ret[i] = getInt()
	}
	return
}

func getString() (ret string) {
	sc.Scan()
	ret = sc.Text()
	return
}

func getRunes() (ret []rune) {
	ret = []rune(getString())
	return
}
