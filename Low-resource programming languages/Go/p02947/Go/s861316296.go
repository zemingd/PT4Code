package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var s = bufio.NewScanner(os.Stdin)

func getString() string {
	s.Scan()
	return s.Text()
}

func getInt() int {
	s.Scan()
	a, _ := strconv.Atoi(s.Text())
	return int(a)
}

type Runes []rune

func (s Runes) Less(i, j int) bool {
	return s[i] < s[j]
}

func (s Runes) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func (s Runes) Len() int {
	return len(s)
}

func main() {
	s.Split(bufio.ScanWords)
	n := getInt()

	nums := make(map[string]int64, n)
	for i := 0; i < n; i++ {
		str := getString()
		runes := []rune(str)
		sort.Sort(Runes(runes))
		nums[string(runes)]++
	}

	var ans int64
	ans = 0
	for _, v := range nums {
		ans += (v * (v - 1)) / 2
	}
	fmt.Println(ans)
}
