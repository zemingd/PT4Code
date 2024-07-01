package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var stdin = bufio.NewScanner(os.Stdin)

func nextInt() int {
	stdin.Scan()
	i, _ := strconv.Atoi(stdin.Text())

	return i
}

func main() {
	stdin.Split(bufio.ScanWords)

	// 1行目
	n := nextInt()
	m := nextInt()

	cards := []int{}

	// 2行目
	// カード登録
	for i := 0; i < n; i++ {
		cards = append(cards, nextInt())
	}
	sort.Ints(cards)

	// 操作をm回
	for i := 0; i < m; i++ {
		// fmt.Println(cards)
		b := nextInt()
		c := nextInt()

		// b枚まで選んでcに書き換えて良い -> c未満のカードをb以下の枚数書き換える
		// 小さい方から書き換えて
		var j int
		for j = 0; j < b; j++ {
			if cards[j] >= c {
				break
			}
			cards[j] = c
		}
		// sortedを保つ
		// 書き換え分と残りの小さい方が最大値
		var max int
		if n-j < j {
			max = j
		} else {
			max = n - j
		}

		for k := 0; k < max; k++ {
			if cards[k] < cards[k+j] {
				break
			}
			// 値を交換する
			s := cards[k]
			cards[k] = cards[k+j]
			cards[k+j] = s
		}
	}

	var sum int64

	for i := 0; i < n; i++ {
		sum += int64(cards[i])
	}

	fmt.Println(sum)
}
