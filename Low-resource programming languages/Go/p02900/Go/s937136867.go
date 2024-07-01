package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	if a > b {
		a, b = b, a
	}
	num := gcd(a, b)
	countMap := make(map[int]int, 0)
	for num%2 == 0 {
		countMap[2]++
		num /= 2
	}
	for i := 3; i <= num; i += 2 {
		//numが非常に大きな素数の場合，途中の計算が無駄になる
		//素数でないならばスキップ
		if !isPrime(i) {
			continue
		} else if isPrime(num) {
			countMap[num]++
			break
		} else {
			//fmt.Println(i)
			for num%i == 0 {
				countMap[i]++
				num /= i
			}
		}
	}
	countMap[1]++
	fmt.Println(len(countMap))
}

func gcd(i int, j int) int {
	var k int
	for j > 0 {
		k = i % j
		i = j
		j = k
	}
	return i
}

func isPrime(num int) bool {
	sqrtNum := int(math.Sqrt(float64(num)))
	for i := 3; i <= sqrtNum; i += 2 {
		if num%i == 0 {
			// 素数ではない
			return false
		}
	}
	return true
}
