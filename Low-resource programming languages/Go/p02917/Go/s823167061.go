// https://atcoder.jp/contests/abc140/tasks/abc140_c
package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	n := nextInt(sc)
	bi := []int{}
	for i := 0; i < n-1; i++ {
		bi = append(bi, nextInt(sc))
	}

	ai := []int{}
	// B0 >= max(A0, A1)なので、B0で初期化する
	ai = append(ai, bi[0])
	ai = append(ai, bi[0])

	// B1 >= max(A1, A2)なので、Ai = min(Bi, Bi+1)で上書き
	for i := 1; i < len(bi); i++ {
		ai[i] = int(math.Min(float64(bi[i]), float64(ai[i]))) // Ai
		ai = append(ai, bi[i])                                // Ai+1
	}

	res := 0
	for _, a := range ai {
		res += a
	}
	fmt.Println(res)
}

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func nextString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}
