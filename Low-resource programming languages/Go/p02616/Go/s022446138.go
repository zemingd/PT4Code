package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

const N = 1_000_000_007

func main() {
	sc := NewScanner()

	n := sc.ReadInt()
	k := sc.ReadInt()
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = sc.ReadInt()
	}

	sort.Slice(a, func(i, j int) bool {
		return Abs(a[i]) > Abs(a[j])
	})

	plusSelectedCount := 0
	lastSelectedPlusIndex := -1
	minusSelectedCount := 0
	lastSelectedMinusIndex := -1
	for i := 0; i < k; i++ {
		ai := a[i]
		if ai > 0 {
			plusSelectedCount++
			lastSelectedPlusIndex = i
		} else if ai < 0 {
			minusSelectedCount++
			lastSelectedMinusIndex = i
		} else {
			fmt.Println(0)
			return
		}
	}

	if minusSelectedCount%2 == 0 {
		ans := 1
		for i := 0; i < k; i++ {
			ans *= Abs(a[i])
			ans %= N
		}
		fmt.Println(ans)
		return
	}

	firstUnselectedPlus := 0
	for i := k; i < n; i++ {
		ai := a[i]
		if ai > 0 {
			firstUnselectedPlus = ai
			break
		}
	}
	firstUnselectedMinus := 0
	for i := k; i < n; i++ {
		ai := a[i]
		if ai < 0 {
			firstUnselectedMinus = ai
			break
		}
	}

	canIncrMinus := plusSelectedCount > 0 && firstUnselectedMinus < 0
	canDecrMinus := minusSelectedCount > 0 && firstUnselectedPlus > 0

	if !canIncrMinus && !canDecrMinus {
		if a[len(a)-1] == 0 {
			fmt.Println(0)
			return
		}
		ans := 1
		for i := 0; i < k; i++ {
			ans *= Abs(a[n-1-i])
			ans %= N
		}
		ans = N - ans
		fmt.Println(ans)
		return
	}

	var minusIncrements bool
	if canIncrMinus && canDecrMinus {
		// [result of minusIncrements] > [result of minusDecrements]
		// = |unselectedMinus| / selectedPlus > unselectedPlus / |selectedMinus|
		// = |unselectedMinus| * |selectedMinus| > unselectedPlus * selectedPlus
		minusIncrements =
			Abs(firstUnselectedMinus)*Abs(a[lastSelectedMinusIndex]) >
				firstUnselectedPlus*a[lastSelectedPlusIndex]
	} else if canIncrMinus && !canDecrMinus {
		minusIncrements = true
	} else if !canIncrMinus && canDecrMinus {
		minusIncrements = false
	} else {
		panic("impossible")
	}

	if minusIncrements {
		a[lastSelectedPlusIndex] = firstUnselectedMinus
	} else {
		a[lastSelectedMinusIndex] = firstUnselectedPlus
	}

	ans := 1
	for i := 0; i < k; i++ {
		ans *= Abs(a[i])
		ans %= N
	}
	fmt.Println(ans)
}

// from [my library](https://github.com/ikngtty/go-contestlib)
// -   math/simple

func Abs(x int) int {
	if x >= 0 {
		return x
	}
	return -x
}

func Min(values ...int) int {
	if len(values) == 0 {
		panic("no values")
	}
	min := values[0]
	for _, v := range values {
		if v < min {
			min = v
		}
	}
	return min
}

func Max(values ...int) int {
	if len(values) == 0 {
		panic("no values")
	}
	max := values[0]
	for _, v := range values {
		if v > max {
			max = v
		}
	}
	return max
}

func Pow(base int, exponent uint) int {
	answer := 1
	for i := uint(0); i < exponent; i++ {
		answer *= base
	}
	return answer
}

func Ceil(divident, dividor int) int {
	quo := divident / dividor
	rem := divident % dividor

	if rem != 0 {
		if (divident > 0 && dividor > 0) ||
			(divident < 0 && dividor < 0) {
			return quo + 1
		}
	}
	return quo
}

// -   sortutil

func ReverseInts(a []int) {
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
}

func ReverseStrings(a []string) {
	sort.Sort(sort.Reverse(sort.StringSlice(a)))
}

// -   io

type Scanner struct {
	bufScanner *bufio.Scanner
}

func NewScanner() *Scanner {
	bufSc := bufio.NewScanner(os.Stdin)
	bufSc.Split(bufio.ScanWords)
	bufSc.Buffer(nil, 100000000)
	return &Scanner{bufSc}
}

func (sc *Scanner) ReadString() string {
	bufSc := sc.bufScanner
	bufSc.Scan()
	return bufSc.Text()
}

func (sc *Scanner) ReadInt() int {
	bufSc := sc.bufScanner
	bufSc.Scan()
	text := bufSc.Text()

	num, err := strconv.Atoi(text)
	if err != nil {
		panic(err)
	}
	return num
}
