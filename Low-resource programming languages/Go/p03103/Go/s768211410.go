package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)

func r() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func main() {
	sc.Split(bufio.ScanWords)
	n, m := r(), r()

	ab := make(map[int]int, n)
	for i := 0; i < n; i++ {
		a, b := r(), r()
		if _, ok := ab[a]; !ok {
			ab[a] = b
		} else {
			ab[a] += b
		}
	}

	key := make([]int, 0, len(ab))
	for k, _ := range ab {
		key = append(key, k)
	}
	sort.Ints(key)

	var count int // 買った本数
	var ans int64 // かかった費用
	for _, k := range key {
		switch {
		case count+ab[k] < m:
			count += ab[k]
			ans += int64(k) * int64(ab[k])
		case count+ab[k] == m:
			count += ab[k]
			ans += int64(k) * int64(ab[k])
			fmt.Println(ans)
			return
		case count+ab[k] > m:
			ans += int64(k) * int64(m-count)
			fmt.Println(ans)
			return
		}
	}
}
