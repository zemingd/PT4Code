package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type card struct {
	q int
	a int
}

type sortByA []card

func (c sortByA) Len() int           { return len(c) }
func (c sortByA) Swap(i, j int)      { c[i], c[j] = c[j], c[i] }
func (c sortByA) Less(i, j int) bool { return c[i].a > c[j].a }

func main() {
	n := getInt()
	m := getInt()

	cards := make([]card, n+m)
	for i := 0; i < n; i++ {
		cards[i].q = 1
		cards[i].a = getInt()
	}
	for i := n; i < n+m; i++ {
		cards[i].q = getInt()
		cards[i].a = getInt()
	}

	sort.Sort(sortByA(cards))

	ans := 0
	count := 0
	for i := 0; count < n; {
		ans += cards[i].a
		cards[i].q--
		count++
		if cards[i].q == 0 {
			i++
		}
	}

	fmt.Println(ans)
}

// -----------------------------------------

var scanner = wordScanner()

func wordScanner() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}

func getInt() int {
	scanner.Scan()
	i, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func getString() string {
	scanner.Scan()
	s := scanner.Text()
	return s
}
