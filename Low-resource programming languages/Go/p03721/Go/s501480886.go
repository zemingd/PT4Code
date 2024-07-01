package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type operation struct {
	a, b int
}

type byA []operation

func (a byA) Len() int           { return len(a) }
func (a byA) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a byA) Less(i, j int) bool { return a[i].a < a[j].a }

func main() {
	n := getInt()
	k := getInt()

	os := make([]operation, n)
	for i := range os {
		os[i].a = getInt()
		os[i].b = getInt()
	}

	sort.Sort(byA(os))

	for i, count := 0, 0; ; {
		count++
		if count == k {
			fmt.Println(os[i].a)
			return
		}

		os[i].b--
		if os[i].b == 0 {
			i++
		}
	}
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
