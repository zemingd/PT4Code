package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func reverse(s string) string {
    runes := []rune(s)
    for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
        runes[i], runes[j] = runes[j], runes[i]
    }
    return string(runes)
}

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	sc.Buffer([]byte{}, math.MaxInt64)
	sc.Scan()
	S := sc.Text()
	S = reverse(S)
	N := 2019
	var m = make([]int, N)
	// 10と2019は「互いに素」なので、累積和同士の剰余が等しいとき定数倍した累積和同士の剰余も等しい
	// x===y (mod 2019) <=> 10x===10y (mod 2019)
	m[0]++ // s0=0 (何も累積していない)
	total := 0
	ten := 1
	for x := 0; x<len(S); x++ {
		tmp, _ := strconv.Atoi(S[x:x+1])
		total += (tmp * ten) % N
		// 10^x (xが十分大きい) を剰余するとオーバーフローするのでNで剰余取りながら累積和をとる
		ten = (ten * 10) % N
		m[total % N]++
	}
	cnt := 0
	for _, v := range m {
		// 剰余の計算結果から2組ずつ選ぶパターン数を足す
		// ex) 2C2=1, 3C2=3
		cnt += v * (v - 1) / 2
	}
	fmt.Println(cnt)
}