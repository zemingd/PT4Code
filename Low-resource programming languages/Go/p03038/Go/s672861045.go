package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var stdin = bufio.NewScanner(os.Stdin)

func nextInt() int64 {
	stdin.Scan()
	i, _ := strconv.ParseInt(stdin.Text(), 10, 64)

	return i
}

type pair struct {
	value int64 // 値
	num   int64 // 枚数
}
type pairs []pair

func (p pairs) Len() int {
	return len(p)
}
func (p pairs) Less(i, j int) bool {
	return p[i].value < p[j].value
}
func (p pairs) Swap(i, j int) {
	s := p[i]
	p[i] = p[j]
	p[j] = s
}

func main() {
	stdin.Split(bufio.ScanWords)

	var i int64

	// 1行目
	n := nextInt()
	m := nextInt()

	cards := pairs{}

	// 2行目
	// カード登録
	for i := int64(0); i < n; i++ {
		a := nextInt()
		cards = append(cards, pair{a, 1})
	}

	// 操作をm回
	for i = 0; i < m; i++ {
		// fmt.Println(cards)
		b := nextInt()
		c := nextInt()

		cards = append(cards, pair{c, b})
	}

	sort.Sort(cards)
	var sum int64
	var c int64
	for i := n + m - 1; i > 0; i-- {
		p := cards[i]

		if c+p.num >= n {
			sum += p.value * int64(n-c)
			break
		} else {
			sum += p.value * int64(p.num)
			c += p.num
		}
	}

	fmt.Println(sum)
}
