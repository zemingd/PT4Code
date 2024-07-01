package main

/*
整数 N, Mが与えられます。

a1+a2+...+aN = Mとなる正整数からなる長さNの数列において、
a1,a2,...,aNの最大公約数のとり得る最大値を求めてください。

1 <= N <= 1e+05
N <= M <= 1e+09
a1,...,aNの最大公約数は、必ずMの約数
a1,...,aNをその約数で割れば、全てで疎な数列になる
Mの約数を大きいほうから確認していけばいい
*/
import (
	"fmt"
	"math"
	"os"
	"sort"
)

func main() {
	var N, M int
	fmt.Scan(&N)
	fmt.Scan(&M)

	ans := solve(N, M)
	if ans >= 0 {
		fmt.Printf("%d\n", ans)
	}
}

func solve(n, m int) int {
	dividers := allDivider(m)
	debug("dividers => %v\n", dividers)
	//大きい順に並べる
	sort.Sort(sort.Reverse(sort.IntSlice(dividers)))

	for _, d := range dividers {
		r := m / d
		if r >= n {
			return d
		}
	}
	return -1
}

/**
 * nで与えられた数字の全約数
 */
func allDivider(n int) []int {
	ret := make([]int, 0)
	ret = append(ret, 1)
	ret = append(ret, n)

	sqrt := int(math.Ceil(math.Sqrt(float64(n))))
	for d := 2; d <= sqrt; d++ {
		if n%d == 0 {
			ret = append(ret, d)
			ret = append(ret, n/d)
		}
	}
	return ret
}

const DEBUG_ENABLE = false

func debug(format string, a ...interface{}) (n int, err error) {
	if DEBUG_ENABLE {
		return fmt.Fprintf(os.Stdout, format, a...)
	} else {
		return 0, nil
	}
}
