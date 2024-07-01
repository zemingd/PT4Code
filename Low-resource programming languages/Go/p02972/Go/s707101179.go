package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n+1)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 1; i <= n; i++ { // 1-indexed
		a[i] = nextInt(sc)
	}
	box := make([]int, n+1)
	for i := n; i >= 1; i-- { // 大きい方から(Nから降順に)見ていく
		sum := 0
		for j := i; j <= n; j += i { // i<=nの間にiの倍数は何個あるか？
			sum += box[j] // iの倍数に対応する箱に入っているボールの数を追跡する
		}
		// fmt.Println("sum[", i, "]", sum, "a[", i, "]=", a[i])
		if (a[i] == 1 && sum%2 == 0) ||
			(a[i] == 0 && sum%2 == 1) {
			box[i]++
		}
	}
	ans := 0
	for i := 1; i < len(box); i++ {
		if box[i] == 1 {
			ans++
		}
	}
	fmt.Println(ans)
	for i := 1; i <= ans; i++ {
		fmt.Print(box[i], " ")
	}
	if ans > 0 {
		fmt.Println()
	}
}
