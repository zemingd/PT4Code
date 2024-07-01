package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type Store struct {
	yen   int
	drink int
}

type Stores []Store

func main() {
	var N, M int
	var money int64

	fmt.Scan(&N, &M)
	sc := wordScanner()

	store := make(Stores, N)

	for i := range store {
		store[i].yen, store[i].drink = getInt(sc), getInt(sc)
	}
	sort.Sort(store)

	for _, v := range store {
		if v.drink < M {
			money += int64(v.drink) * int64(v.yen)
			M -= v.drink
		} else {
			money += int64(M) * int64(v.yen)
			break
		}
	}
	fmt.Println(money)

}

func (s Stores) Len() int {
	return len(s)
}

func (s Stores) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func (s Stores) Less(i, j int) bool {
	return s[i].yen < s[j].yen
}

// 空白区切りで読み込む
func wordScanner() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}

func getInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return int(i)
}
