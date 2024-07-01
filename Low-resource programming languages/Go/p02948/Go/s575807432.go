package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type Arbeit struct {
	a int
	b int
}

var m, n int

type Cal1 []*Arbeit

func (c Cal1) Len() int {
	return len(c)
}

func (c Cal1) Swap(i, j int) {
	c[i], c[j] = c[j], c[i]
}

func (c Cal1) Less(i, j int) bool {
	if c[i].b == c[j].b {
		return c[i].a > c[j].a
	}
	return c[i].b > c[j].b
}

func (c Cal1) String() (str string) {
	for day, e := range c {
		str += fmt.Sprintf("work %d: %d yen on day %d ", day, e.b, day+e.a)
		if day+e.a <= m {
			str += "O\n"
		} else {
			str += "X\n"
		}
	}
	return
}

type Cal2 Cal1

func (c Cal2) Len() int {
	return len(c)
}

func (c Cal2) Swap(i, j int) {
	c[i], c[j] = c[j], c[i]
}

func (c Cal2) Less(i, j int) bool {
	if i < j {
		return i+c[i].a <= m
	} else {
		return m < j+c[j].a
	}
}

func getint(scanner *bufio.Scanner) int {
	if scanner.Scan() {
		i, _ := strconv.Atoi(scanner.Text())
		return i
	}
	return 0
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	n = getint(scanner)
	m = getint(scanner)

	size := m + 1
	calendar := []*Arbeit{}

	for i := 0; i < n; i++ {

		beit := &Arbeit{}
		beit.a = getint(scanner)
		beit.b = getint(scanner)
		// fmt.Println(*beit)

		calendar = append(calendar, beit)

		sort.Sort(Cal1(calendar))
		// fmt.Print(Cal1(calendar))
		sort.Sort(Cal2(calendar))
		// fmt.Print(Cal1(calendar))

		if size < len(calendar) {
			calendar = calendar[0:size]
		}
	}

	sum := 0
	for day, beit := range calendar {
		if beit != nil && day+beit.a <= m {
			sum += beit.b
		}
	}
	fmt.Println(sum)
}
