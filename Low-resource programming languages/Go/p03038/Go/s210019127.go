package main

import (
	"bufio"
	"fmt"
	"os"
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

func sort(slice []pair, n int, m int) {
	// fmt.Printf("sort(%d, %d)\n", n, m)
	if n >= m {
		return
	}

	pivot := slice[n]
	var i = n
	var j = m

	for i < j {
		for slice[i].value < pivot.value {
			i++
		}
		for slice[j].value > pivot.value {
			j--
		}
		// slice[i] >= pivot, slice[j] < pivotなので、入れ替える
		if i < j {
			// fmt.Printf("swap(%d, %d)\n", i, j)
			s := slice[i]
			slice[i] = slice[j]
			slice[j] = s
			i++
			j--
		}
	}
	// pivotをiに持ってくる
	slice[n] = slice[i]
	slice[i] = pivot
	sort(slice, n, i-1)
	sort(slice, i+1, m)

	return
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

	sort(cards, 0, len(cards)-1)
	// fmt.Println(cards)
	var sum int64
	var c int
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
