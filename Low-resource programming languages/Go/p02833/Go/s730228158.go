package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func countZeroOfEnd(n int) int {
	//奇数は末尾ゼロにならない
	if n%2 != 0 {
		return 0
	}

	result := 0
	nn := float64(n)
	// 10の倍数の数
	// 50の倍数の数（2*50で ゼロを増やせるため）
	// 250の倍数の数（2*250で ゼロを増やせるため）
	// ....
	for i := 10.0; i < nn; i *= 5 {
		result += int(math.Floor(nn / i))
	}
	return result
}

func main() {
	n := nextInt()
	r := countZeroOfEnd(n)
	fmt.Println(r)
}
