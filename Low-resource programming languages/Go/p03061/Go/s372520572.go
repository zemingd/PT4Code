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
	num.primeFactors()
	return num
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

/*
func (n *Num) getDivisor() {
	num := n.value
	for i := 2; i <= n.value; i++ {
		for num%i == 0 {
			if _, ok := n.divisor[i]; !ok {
				n.divisor[i] = 0
			}
			n.divisor[i]++
			num = num / i
		}
		if num == 1 {
			break
		}
	}
}
*/

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
	return 1
	/*
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
	*/
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
	fmt.Println(getGCD(A))
}