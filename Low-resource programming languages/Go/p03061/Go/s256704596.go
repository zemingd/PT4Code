package main

import (
	"fmt"
	"math"
)

type Num struct {
	value   int
	divisor map[int]int
}

func NewNum(i int) *Num {
	num := &Num{}
	num.value = i
	num.divisor = make(map[int]int)
	num.getDivisor()
	return num
}

func (n *Num) getDivisor() {
	num := n.value
	for i := 2; i <= int(math.Sqrt(float64(n.value))); i++ {
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

func getGDBExcpetForI(j int, A []*Num) int {
	divisor := make(map[int]int)
	if j != 0 {
		for value, num := range A[0].divisor {
			divisor[value] = num
		}
	} else {
		for value, num := range A[1].divisor {
			divisor[value] = num
		}
	}
	for i := 0; i < len(A); i++ {
		if i == j {
			continue
		}
		for value, _ := range divisor {
			if _, ok := A[i].divisor[value]; ok {
				if divisor[value] > A[i].divisor[value] {
					divisor[value] = A[i].divisor[value]
				}
			} else {
				delete(divisor, value)
			}
		}
	}
	gdb := 1
	for value, num := range divisor {
		gdb *= int(math.Pow(float64(value), float64(num)))
	}
	return gdb
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
	divisor := make(map[int]int)
	for value, num := range A[0].divisor {
		divisor[value] = num
	}
	for i := 1; i < N; i++ {
		for value, _ := range divisor {
			if _, ok := A[i].divisor[value]; ok {
				if divisor[value] > A[i].divisor[value] {
					divisor[value] = A[i].divisor[value]
				}
			} else {
				delete(divisor, value)
			}
		}
	}
	maxGDB := 0
	for i := 0; i < N; i++ {
		tmpGDB := getGDBExcpetForI(i, A)
		if maxGDB < tmpGDB {
			maxGDB = tmpGDB
		}
	}
	fmt.Println(maxGDB)
}