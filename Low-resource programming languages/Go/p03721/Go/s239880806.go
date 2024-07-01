package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type entry struct {
	num, count int64
}
type byNum []entry

func (l byNum) Len() int {
	return len(l)
}
func (l byNum) Swap(i, j int) {
	l[i], l[j] = l[j], l[i]
}
func (l byNum) Less(i, j int) bool {
	return l[i].num < l[j].num
}

func get_int(sc *bufio.Scanner) int64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return int64(i)
}

func main() {
	var n, k int64
	fmt.Scan(&n, &k)

	as := make([]int64, n)
	bs := make([]int64, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range as {
		as[i] = get_int(sc)
		bs[i] = get_int(sc)
	}

	counter := make(map[int64]int64)
	for i, a := range as {
		counter[a] += bs[i]
	}

	cs := make(byNum, 0)
	for k, v := range counter {
		cs = append(cs, entry{num: k, count: v})
	}
	sort.Sort(cs)

	sum := int64(0)
	for _, c := range cs {
		sum += c.count
		if sum >= k {
			fmt.Println(c.num)
			break
		}
	}
}
