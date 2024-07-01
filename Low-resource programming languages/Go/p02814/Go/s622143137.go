package main

import "fmt"

func FactoredPrimeNumber(num int) map[int]int {
	return factor(num, 2)
}

func merge(m1, m2 map[int]int) map[int]int {
	ans := map[int]int{}
	for k, v := range m1 {
		ans[k] += v
	}
	for k, v := range m2 {
		ans[k] += v
	}
	return ans
}

func factor(num, pnum int) map[int]int {
	result := make(map[int]int)
	if pnum*pnum > num {
		if num != 1 {
			result[num] += 1
		}
		return result
	}

	if num%pnum == 0 {
		num /= pnum
		result[pnum]++
	} else {
		pnum++
	}
	return merge(result, factor(num, pnum))
}

func count(n int) int {
	cnt := 0
	for n%2 == 0 {
		cnt++
		n /= 2
	}
	return cnt
}

func gcd(x, y int) int {
	if y == 0 {
		return x
	}
	return gcd(y, x%y)
}
func main() {
	var N, M int
	fmt.Scanf("%d %d\n", &N, &M)

	a := make([]int, N)
	for i := 0; i < N; i++ {
		var ai int
		fmt.Scan(&ai)
		a[i] = ai / 2
	}
	cnt := count(a[0])
	M = M >> uint(cnt)
	for i := 0; i < N; i++ {
		if cnt != count(a[i]) {
			fmt.Println(0)
			return
		}
		a[i] = a[i] >> uint(cnt)
	}
	lcm := 1
	for i := 0; i < N; i++ {
		r := gcd(lcm, a[i])
		lcm = lcm / r * a[i]
	}
	if lcm > M {
		fmt.Println(0)
		return
	}
	fmt.Println((M/lcm + 1) / 2)
}
