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
	value int64
	num   int
}

func main() {
	stdin.Split(bufio.ScanWords)

	// 1行目
	n := int(nextInt())
	m := int(nextInt())

	cards := []pair{}

	// 2行目
	// カード登録
	for i := 0; i < n; i++ {
		a := nextInt()
		cards = append(cards, pair{a, 1})
	}

	// 操作をm回
	for i := 0; i < m; i++ {
		// fmt.Println(cards)
		b := int(nextInt())
		c := nextInt()

		cards = append(cards, pair{c, b})
	}

	sort.Slice(cards, func(i, j int) bool {
		// 降順にならべる
		return cards[i].value > cards[j].value
	})

	var sum int64
	var c int
	for i := 0; i < n+m; i++ {
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
