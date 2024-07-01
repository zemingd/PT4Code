package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func Max(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func Min(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

func absInt(a int) int {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

func main() {
	sc.Split(bufio.ScanWords)
	N := nextInt()
	//連想配列
	L, R := make(map[int]int), make(map[int]int)

	for i := 0; i < N; i++ {
		tmp := nextInt()
		L[i-tmp]++
		R[i+tmp]++
	}

	//fmt.Println(L, R)
	ans := 0
	for k, v := range L {
		ans += R[k] * v
	}

	fmt.Println(ans)

}
