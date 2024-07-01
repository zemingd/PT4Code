package main

import "fmt"

func main() {
	var n, k, i, next, count, check uint64
	fmt.Scan(&n, &k)
	var a []uint64 = make([]uint64, n)
	var b []uint64 = make([]uint64, 0)
	c := make(map[uint64]uint64)
	for i = 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	next = 1
	c[1] = 1
	b = append(b, 1)
	for i = 0; i < k; i++ {
		b = append(b, a[next-1])
		next = a[next-1]
		count++
		if c[next] > 0 {
			if next == 1 {
				check = k % count
				if check == 0 {
					fmt.Println(b[count])
					return
				}
				fmt.Println(b[check])
				return
			}
			check = count - c[next]
			check = (k - count) % check
			if check == 0 {
				fmt.Println(b[count])
				return
			}
			fmt.Println(b[c[next]+check])
			return

		}
		c[next] = count
	}

	fmt.Println(b[k])
}
