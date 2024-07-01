package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	enums := enumPrime(N)
	ans := 0
	keys := []int{}
	for k, _ := range enums {
		keys = append(keys, k)
	}
	used := make(map[int]bool)
	for _, k := range keys {
		tmp := 1
		for enums[k] > 0 {
			tmp *= k
			if _, ok := used[tmp]; !ok {
				used[tmp] = true
				ans++
				tmp = 1
			}
			enums[k]--
		}
		used[k] = true
	}
	fmt.Println(ans)
}

func enumPrime(P int) (dividers map[int]int) {
	dividers = make(map[int]int)
	for i := 2; i*i <= P; i++ {
		tmp := 0
		_P := P
		_pow := i
		for _P%i == 0 {
			_pow *= i
			tmp++
			_P /= i
		}
		if tmp > 0 {
			dividers[i] = tmp
			P /= (_pow / i)
		}
	}
	if P > 0 {
		dividers[P] = 1
	}
	dividers[1] = 0
	return
}
