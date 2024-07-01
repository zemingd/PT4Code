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
func Pow(a, n int64) int64 {
	var r int64 = 1
	for n > 0 {
		if n&1 == 1 {
			r = r * a
		}
		a = a * a
		n >>= 1
	}
	return r
}

func main() {
	var N, M int64
	fmt.Scanf("%d %d\n", &N, &M)

	result := map[int64]int64{}
	for i := int64(0); i < N; i++ {
		var ai int64
		fmt.Scan(&ai)
		r := FactoredPrimeNumber(int(ai))
		for k, v := range r {
			if int64(v) > result[int64(k)] {
				result[int64(k)] = int64(v)
			}
		}
	}
	pr := int64(1)
	for k, v := range result {
		pr *= Pow(k, v)
	}
	if pr%2 == 0 {
		pr /= 2
	} else {
		fmt.Println(0)
		return
	}
	cnt := 0
	offset := pr * 2
	for M >= pr {
		cnt++
		pr = pr + offset
	}
	fmt.Println(cnt)
}
