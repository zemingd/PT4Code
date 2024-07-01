package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type Drink struct {
	price int
	num   int
}

type Drinks []Drink

func (l Drinks) Len() int {
	return len(l)
}

func (l Drinks) Less(i, j int) bool {
	return l[i].price < l[j].price
}

func (l Drinks) Swap(i, j int) {
	l[i], l[j] = l[j], l[i]
}

func main() {
	var n, m int
	s := wordScanner(100)
	scanInts(s, &n, &m)

	drinks := make(Drinks, n)
	for i := 0; i < n; i++ {
		scanInts(s, &drinks[i].price, &drinks[i].num)
	}

	sort.Sort(drinks)

	var ans int64
	for _, drink := range drinks {
		if drink.num >= m {
			ans += int64(drink.price) * int64(m)
			break
		}
		ans += int64(drink.price) * int64(drink.num)
		m -= drink.num
	}

	fmt.Println(ans)
}

func wordScanner(n int) *bufio.Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	b := make([]byte, n)
	s.Buffer(b, n)
	return s
}

func scanInts(s *bufio.Scanner, vals ...*int) {
	for i := range vals {
		s.Scan()
		n, _ := strconv.Atoi(s.Text())
		*vals[i] = n
	}
}
