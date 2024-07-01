package main

import "fmt"

func main() {
	s := make([]int, 5)
	for i := range s {
		fmt.Scan(&s[i])
	}

	lastOrder := -1
	lastOrderRemainder := 10
	for i := range s {
		if s[i]%10 < lastOrderRemainder && s[i]%10 != 0 {
			lastOrder = i
			lastOrderRemainder = s[i] % 10
		}
	}

	if lastOrder == -1 {
		sum := 0
		for i := range s {
			sum += s[i]
		}
		fmt.Println(sum)
		return
	}

	sum := 0
	for i := range s {
		if i == lastOrder {
			continue
		}
		sum += s[i]
		for sum%10 != 0 {
			sum++
		}
	}
	fmt.Println(sum + s[lastOrder])
}
