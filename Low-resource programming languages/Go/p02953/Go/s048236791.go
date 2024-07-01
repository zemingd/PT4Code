package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

const (
	initialBufSize = 1e4
	maxBufSize     = 1e6 + 7
)

var buf []byte = make([]byte, maxBufSize)
var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(buf, maxBufSize)
}

func main() {
	N := nextInt()
	if N == 1 {
		fmt.Println("Yes")
		return
	}
	// prev := nextInt()
	lowerable := true
	// max := int(1e9) + 1
	Hn := make([]int, N)
	Hn[0] = nextInt()
	for i := 1; i < N; i++ {
		Hn[i] = nextInt()
		d := Hn[i] - Hn[i-1]
		if d >= 1 {
			Hn[i]--
			lowerable = false
		} else if d == 0 {
			lowerable = true
		} else if d == -1 && lowerable {
			lowerable = false
			Hn[i-1]--
		} else {
			fmt.Println("No")
			return
		}
	}
	// fmt.Println(Hn)
	for i := 1; i < N; i++ {
		if Hn[i-1] > Hn[i] {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
	// for i := 1; i < N; i++ {
	// 	cur := nextInt()
	// 	d := cur - prev
	// 	// if d >= 2 || d <= -2 {
	// 	// 	fmt.Println("No")
	// 	// 	return
	// 	// }
	// 	if d == 1 {
	// 		Hn[i-1], Hn[i] = prev, cur
	// 		prev = cur
	// 		lowerable = true
	// 	} else if d == -1 && lowerable {
	// 		Hn[i-1], Hn[i] = prev-1, cur
	// 		prev = cur
	// 		lowerable = false
	// 	} else if d == 0 || d >= 2 {
	// 		Hn[i-1], Hn[i] = prev, cur
	// 		prev = cur
	// 		lowerable = true
	// 	} else {
	// 		fmt.Println("No")
	// 		return
	// 	}
	// 	// fmt.Println(cur, prev, lowerable)
	// }
	// fmt.Println("Yes")
}

func nextLine() string {
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

func abs(a int) int {
	if a > 0 {
		return a
	} else {
		return -a
	}
}

func pow(p, q int) int {
	res := p
	if q == 0 {
		return 1
	}
	for i := 0; i < q-1; i++ {
		res *= p
	}
	return res
}

func MinOf(vars ...int) int {
	min := vars[0]
	for _, i := range vars {
		if min > i {
			min = i
		}
	}
	return min
}

func MaxOf(vars ...int) int {
	max := vars[0]
	for _, i := range vars {
		if max < i {
			max = i
		}
	}
	return max
}

func gcdof2numbers(a int, b int) int {
	if b == 0 {
		return a
	}
	return gcdof2numbers(b, a%b)
}

func lcmof2numbers(a int, b int) int {
	return a / gcdof2numbers(a, b) * b
}

// マイナスの場合は考慮していない
func fuctorial(a int) int {
	if a == 1 || a == 0 {
		return 1
	} else {
		return fuctorial(a-1) * a
	}
}

func NextPermutation(x sort.Interface) bool {
	n := x.Len() - 1
	if n < 1 {
		return false
	}
	j := n - 1
	for ; !x.Less(j, j+1); j-- {
		if j == 0 {
			return false
		}
	}
	l := n
	for !x.Less(j, l) {
		l--
	}
	x.Swap(j, l)
	for k, l := j+1, n; k < l; {
		x.Swap(k, l)
		k++
		l--
	}
	return true
}

// 素因数分解したmapを返す
func primeFuctorize(n int) map[int]int {
	pf := map[int]int{}
	for i := 2; i*i <= n; i++ {
		for n%i == 0 {
			pf[i]++
			n /= i
		}
	}
	if n != 1 {
		pf[n]++
	}
	return pf
}
