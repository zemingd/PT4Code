package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func blockCount(V []int) (int, int, int, int) {
	var vnum1, vcnt1, vnum2, vcnt2 int

	cnt, N := 1, len(V)
	for i := 1; i < N; i++ {
		if V[i] == V[i-1] {
			cnt++
		} else {
			if cnt >= vcnt1 {
				vnum2, vcnt2 = vnum1, vcnt1
				vnum1, vcnt1 = V[i-1], cnt
			} else if cnt >= vcnt2 {
				vnum2, vcnt2 = V[i-1], cnt
			}
			cnt = 1
		}
	}
	if cnt >= vcnt1 {
		vnum2, vcnt2 = vnum1, vcnt1
		vnum1, vcnt1 = V[N-1], cnt
	} else if cnt >= vcnt2 {
		vnum2, vcnt2 = V[N-1], cnt
	}

	return vnum1, vcnt1, vnum2, vcnt2
}

func intMax(x, y int) int {
	return int(math.Max(float64(x), float64(y)))
}

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()
	V1, V2 := make([]int, N/2), make([]int, N/2)
	for i := 0; i < N; i++ {
		if i%2 == 0 {
			V1[i/2] = scanInt()
		} else {
			V2[i/2] = scanInt()
		}
	}
	sort.Ints(V1)
	sort.Ints(V2)

	v1num1, v1cnt1, _, v1cnt2 := blockCount(V1)
	v2num1, v2cnt1, _, v2cnt2 := blockCount(V2)

	var ans int
	if v1num1 != v2num1 {
		ans = N - v1cnt1 - v2cnt1
	} else {
		ans = intMax(N-v1cnt1-v2cnt2, N-v1cnt2-v2cnt1)
	}
	fmt.Println(ans)
}
