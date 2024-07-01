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

func main() {
	sc.Split(bufio.ScanWords)

	x := nextInt()
	n := nextInt()

	if n == 0 {
		fmt.Println(x)
		return
	}

	plist := make([]int, n)
	havetarget := false
	for i := 0; i < n; i++ {
		plist[i] = nextInt()
		// 対象外リストにxがふくまれていればtrueにする
		if plist[i] == x {
			havetarget = true
		}

	}

	// 対象外リストにxがふくまれていなければそこでxをかえす
	if havetarget == false {
		fmt.Println(x)
		return
	}

	sort.Sort(sort.IntSlice(plist))

	upper := 0
	for u := 1; u <= 102; u++ {
		// adjから上に向かって探索
		if hasX(x+u, plist) == false {
			upper = x + u
			break
		}
	}
	down := 0
	for u := 1; u <= 102; u++ {
		// adjから下に向かって探索
		if hasX(x-u, plist) == false {
			down = x - u
			break
		}
	}

	if abs(x-upper) == abs(x-down) {
		fmt.Println(down)
		return
	} else if abs(x-upper) < abs(x-down) {
		fmt.Println(upper)
		return
	}

	fmt.Println(down)
}

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func hasX(x int, plist []int) bool {

	for _, p := range plist {
		if x == p {
			return true
		}
	}
	return false
}

// ---- readfunc
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
