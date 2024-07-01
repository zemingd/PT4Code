package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	type hand struct {
		win, lose rune
	}
	hs := map[rune]hand{
		'r': {win: 's', lose: 'p'},
		's': {win: 'p', lose: 'r'},
		'p': {win: 'r', lose: 's'},
	}

	n, k := getInt(), getInt()
	score := make(map[rune]int)
	score[hs['r'].win] = getInt()
	score[hs['s'].win] = getInt()
	score[hs['p'].win] = getInt()
	t := getRunes()

	ans := 0
	before := make([]rune, n)
	for i := range before {
		before[i] = ' '
	}
	for i, c := range t {
		if before[i] == c {
			continue
		}

		ans += score[c]
		if i+k < n {
			before[i+k] = c
		}
	}
	fmt.Fprintln(wr, ans)
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
