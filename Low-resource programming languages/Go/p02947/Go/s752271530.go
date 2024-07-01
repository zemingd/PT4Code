package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type stringSorter []byte

func (ss stringSorter) Len() int {
	return len(ss)
}

func (ss stringSorter) Less(i, j int) bool {
	return ss[i] < ss[j]
}

func (ss stringSorter) Swap(i, j int) {
	ss[i], ss[j] = ss[j], ss[i]
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	mp := make(map[string]int)

	for i := 0; i < n; i++ {
		sc.Scan()
		sort.Sort(stringSorter(sc.Bytes()))

		mp[sc.Text()]++
	}

	var ans int
	for _, v := range mp {
		ans += v * (v - 1) / 2
	}
	fmt.Println(ans)
}
