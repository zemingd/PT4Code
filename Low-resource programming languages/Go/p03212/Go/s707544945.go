package main

import "fmt"

func order(n int) int {
	count := 1
	for {
		if n/10 >= 1 {
			n /= 10
			count++
		} else {
			break
		}
	}
	return count
}
func is(rep []int, n int) bool {
	for i := 0; i < len(rep); i++ {
		if rep[i] == n {
			return true
		}
	}
	return false
}
func solve(n int) bool {
	order := order(n)
	var rep []int
	for i := 1; i <= order; i++ {
		if n%10 == 3 || n%10 == 5 || n%10 == 7 {
			rep = append(rep, n%10)
			n /= 10
			if i == order {
				if is(rep, 3) && is(rep, 5) && is(rep, 7) {
					return true
				}
			}

		}
	}
	return false
}
func main() {
	var n int
	fmt.Scanf("%d\n", &n)

	count := 0
	for i := 357; i <= n; i++ {
		if solve(i) {
			count++
		}
	}
	fmt.Println(count)
}