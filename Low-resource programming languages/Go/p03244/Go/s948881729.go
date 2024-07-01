package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type Entry struct {
	value int
	count int
	even  bool
}

// AtCoder は Go 1.6 なので sort.Slice が使えない...
type Entries []*Entry

func (e Entries) Len() int {
	return len(e)
}
func (e Entries) Less(i, j int) bool {
	a := e[i]
	b := e[j]
	if a.count != b.count {
		return a.count > b.count
	}
	return a.value > b.value
}
func (e Entries) Swap(i, j int) {
	e[i], e[j] = e[j], e[i]
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	n := scanInt(sc)

	evens := make(map[int]*Entry, 0)
	odds := make(map[int]*Entry, 0)
	var mp map[int]*Entry
	for i := 0; i < n; i++ {
		v := scanInt(sc)

		if i%2 == 0 {
			mp = evens
		} else {
			mp = odds
		}

		if mp[v] == nil {
			mp[v] = &Entry{value: v, count: 1, even: i%2 == 0}
		} else {
			mp[v].count += 1
		}
	}

	entries := make([]*Entry, 0, len(evens)+len(odds))
	for _, e := range evens {
		entries = append(entries, e)
	}
	for _, e := range odds {
		entries = append(entries, e)
	}

	sort.Sort(Entries(entries))

	// for _, e := range entries {
	// 	fmt.Println(*e)
	// }

	top := entries[0]
	oppCount := 0
	for _, et := range entries {
		if et.even != top.even && et.value != top.value {
			oppCount = et.count
			break
		}
	}

	fmt.Println(n - top.count - oppCount)
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}
