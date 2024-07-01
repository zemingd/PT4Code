package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)

	sc.Scan()
	nStrings, _ := strconv.Atoi(sc.Text())

	counts := make(map[string]int64)
	for i := 0; i < nStrings; i++ {
		sc.Scan()
		runes := []rune(sc.Text())
		sort.Sort(Runes(runes))
		counts[string(runes)] += 1
	}

	nCombies := int64(0)
	for _, cnt := range counts {
		if cnt > 1 {
			nCombies += countCombies(cnt)
		}
	}

	fmt.Println(nCombies)
}

func countCombies(total int64) int64 {
	return total * (total - 1) / 2
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
