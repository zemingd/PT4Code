package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type Work struct {
	days int
	pay  int
}

type Works []Work

func (s Works) Less(i, j int) bool {
	if s[i].pay != s[j].pay {
		return s[i].pay > s[j].pay
	}
	return s[i].days > s[j].days
}

func (s Works) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func (s Works) Len() int {
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

	sort.Sort(Works(works))

	earnings := int64(0)
	for _, w := range works {
		if w.days <= nDays {
			earnings += int64(w.pay)
		}
		nDays -= 1
	}

	fmt.Println(earnings)
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}
