package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// MOD is a big number.
const MOD int64 = int64(1e9 + 7)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int64 {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return int64(i)
}
func main() {
	//最初に個数を読み込む
	var n int
	fmt.Scan(&n)

	//次にスライスを用意し、読み込んだ数値を追加していく
	var x []int64
	sc.Split(bufio.ScanWords)
	for i := 0; i < n; i++ {
		x = append(x, nextInt())
	}
	//fmt.Println(x)

	var ans int64
	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			if i != j {
				ans += (x[i] * x[j]) % MOD
				ans %= MOD
			}
		}
	}
	fmt.Println(ans / 2)
}
