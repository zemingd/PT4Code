package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextInt64() int64 {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return i
}

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func main() {
    sc.Buffer(make([]byte, 200000*1+1), 200000)
	sc.Split(bufio.ScanWords)

	var n int
	var s string
	var ans int64

	mp := map[string]int{}

	n = nextInt()

	for i := 0; i < n; i++ {
		s = nextStr()
		slice := strings.Split(s, "")
		sort.Strings(slice)
		s = strings.Join(slice, "")
		ans += int64(mp[s])
		mp[s]++
	}

	fmt.Println(ans)
}