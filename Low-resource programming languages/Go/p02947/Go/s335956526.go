package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

type sortRunes []rune

func (s sortRunes) Less(i, j int) bool {
	return s[i] < s[j]
}

func (s sortRunes) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func (s sortRunes) Len() int {
	return len(s)
}

func sortString(s string) string {
	r := []rune(s)
	sort.Sort(sortRunes(r))
	return string(r)
}

func readLine() string {
	buf := make([]byte, 0, 1000000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func main() {
	var N int
	fmt.Scanf("%d", &N)

	c := map[string]int{}

	for i := 0; i < N; i++ {
		key := sortString(readLine())
		_, ok := c[key]
		if ok {
			c[key] += 1
			continue
		}
		c[key] = 1
	}

	var total int64
	for _, count := range c {
		if count == 1 {
			continue
		}
		total += int64(count) * (int64(count)-1) / 2
	}

	fmt.Printf("%d", total)
}
