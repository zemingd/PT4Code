package main

import (
	"fmt"
	"math"
	"sort"
)

type Num struct {
	value  int
	factor map[int]int
}

func NewNum(i int) *Num {
	num := &Num{}
	num.value = i
	num.factor = make(map[int]int)
	//	num.primeFactors()
	return num
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	} else {
		return gcd(b, a%b)
	}
}

func (n Num) gcd(n1 Num) int {
	return gcd(n.value, n1.value)
}

func (n *Num) primeFactors() {
	num := n.value
	i := 2
	for i*i <= num {
		if num%i == 0 {
			num /= i
			n.factor[i] += 1
		} else {
			i += 1
		}
	}
	if num != 1 {
		n.factor[num] += 1
	}
}

func getMin(divisor []int, length int) (min, nextMin int) {
	switch {
	case len(divisor) <= length-2:
		min = 0
		nextMin = 0
	case len(divisor) == length-1:
		sort.Ints(divisor)
		min = 0
		nextMin = divisor[0]
	default:
		sort.Ints(divisor)
		min = divisor[0]
		nextMin = divisor[1]
	}
	return min, nextMin
}

func getGCD(A []*Num) int {
	factors := make(map[int][]int)
	for _, a := range A {
		for value, count := range a.factor {
			if _, ok := factors[value]; !ok {
				factors[value] = make([]int, 0, 0)
			}
			factors[value] = append(factors[value], count)
		}
	}
	max := 0.0
	gcd := 1
	for value, factor := range factors {
		min, nextMin := getMin(factor, len(A))
		gcd *= int(math.Pow(float64(value), float64(min)))
		tmpMax := math.Pow(float64(value), float64(nextMin-min))
		if max < tmpMax {
			max = tmpMax
		}
	}
	return gcd * int(max)
}

func main() {
	var N int
	fmt.Scan(&N)
	A := make([]*Num, 0, N)
	var input int
	for i := 0; i < N; i++ {
		fmt.Scan(&input)
		A = append(A, NewNum(input))
	}
	var gcd int = A[0].value
	for i := 1; i < N; i++ {
		gcd = A[i].gcd(gcd)
	}
	fmt.Println(gcd)
}