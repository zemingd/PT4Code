package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	n, k := 0, 0
	fmt.Scan(&n)
	fmt.Scan(&k)

	a := make([]int, n)
	np, nz, nn := 0, 0, 0

	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
		if a[i] > 0 {
			np++
		} else if a[i] == 0 {
			nz++
		} else {
			nn++
		}
	}

	rnn := nn * np
	rnz := nz*(n-nz) + nz*(nz-1)/2

	// rnp := n*(n-1)/2 - rnn - rnz
	// rn := n * (n - 1) / 2
	// fmt.Println(np, nz, nn)
	// fmt.Println(rnp, rnz, rnn, rn)
	// fmt.Println(a)

	if k < rnn {
		arr1 := []int{}
		arr2 := []int{}
		for _, x := range a {
			if x < 0 {
				arr1 = append(arr1, -x)
			} else if x > 0 {
				arr2 = append(arr2, x)
			}
		}
		sort.Ints(arr1)
		sort.Ints(arr2)
		c1 := len(arr1)
		c2 := len(arr2)

		// fmt.Println(arr1)
		// fmt.Println(arr2)

		l := 0
		r := int(math.Pow10(18) + 1)
		k = rnn - k
		for r-l != 1 {
			mid := (l + r) / 2
			cnt := 0
			pos := c2 - 1
			// fmt.Println(">>>>", l, mid, r)
			for i := 0; i < c1; i++ {
				// fmt.Println(i, pos, cnt)
				for pos != -1 {
					if arr2[pos] > mid/arr1[i] {
						pos--
					} else {
						break
					}
				}
				cnt += pos + 1
			}
			if cnt > k {
				r = mid
			} else {
				l = mid
			}
		}
		fmt.Println(-r)
	} else if k < rnn+rnz {
		// Zero
		fmt.Print(0)
	} else { // Positive
		arr1 := []int{}
		arr2 := []int{}
		for _, x := range a {
			if x < 0 {
				arr1 = append(arr1, -x)
			} else if x > 0 {
				arr2 = append(arr2, x)
			}
		}
		sort.Ints(arr1)
		sort.Ints(arr2)
		c1 := len(arr1)
		c2 := len(arr2)

		l := 0
		r := int(math.Pow10(18) + 1)
		k -= rnn + rnz
		for r-l != 1 {
			mid := (l + r) / 2
			cnt1 := 0
			pos1 := c1 - 1
			for i := 0; i < c1; i++ {
				tmp := 0
				for pos1 != -1 {
					if arr1[pos1] > mid/arr1[i] {
						pos1--
					} else {
						break
					}
				}
				tmp += pos1 + 1
				if arr1[i]*arr1[i] < mid {
					tmp--
				}
				cnt1 += tmp
			}
			cnt1 = cnt1 / 2
			cnt2 := 0
			pos2 := c2 - 1
			for i := 0; i < c2; i++ {
				tmp := 0
				for pos2 != -1 {
					if arr2[pos2] > mid/arr2[i] {
						pos2--
					} else {
						break
					}
				}
				tmp += pos2 + 1
				if arr2[i]*arr2[i] < mid {
					tmp--
				}
				cnt2 += tmp
			}
			cnt2 = cnt2 / 2
			cnt := cnt1 + cnt2
			if cnt >= k {
				r = mid
			} else {
				l = mid
			}
		}
		fmt.Println(r)
	}

}
