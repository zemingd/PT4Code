package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type Work struct {
	days int
	pay  int
}

// 報酬による Priority Queue を実装する型。
type AvailableWorks []Work

func (aw AvailableWorks) Len() int {
	return len(aw)
}

func (aw AvailableWorks) Less(a, b int) bool {
	// 報酬が高いバイトほどヒープの上に来るようにする。
	return aw[a].pay > aw[b].pay
}

func (aw AvailableWorks) Swap(a, b int) {
	aw[a], aw[b] = aw[b], aw[a]
}

func (aw *AvailableWorks) Push(w interface{}) {
	work := w.(Work)
	*aw = append(*aw, work)
}

func (aw *AvailableWorks) Pop() interface{} {
	n := len(*aw)
	work := (*aw)[n-1]
	*aw = (*aw)[0 : n-1]
	return work
}

type DaysDesc []Work

func (s DaysDesc) Less(i, j int) bool {
	return s[i].days < s[j].days
}

func (s DaysDesc) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func (s DaysDesc) Len() int {
	return len(s)
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	nWorks := scanInt(sc)
	nDays := scanInt(sc)

	works := make([]Work, nWorks)
	for i := 0; i < nWorks; i++ {
		works[i] = Work{
			days: scanInt(sc),
			pay:  scanInt(sc),
		}
	}
	sort.Sort(DaysDesc(works))

	earnings := int64(0)
	wi := 0
	ws := make(AvailableWorks, 0)
	for d := 1; d <= nDays; d++ {
		for ; wi < len(works) && works[wi].days == d; wi++ {
			heap.Push(&ws, works[wi])
		}
		if ws.Len() > 0 {
			heap.Init(&ws)
			w := heap.Pop(&ws).(Work)
			earnings += int64(w.pay)
		}
	}

	fmt.Println(earnings)
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}
