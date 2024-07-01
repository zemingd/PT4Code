package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&as[i])
	}

	tmp := true
	for _, a := range as {
		if !judge(a) {
			tmp = false
			break
		}
	}

	var msg string
	if tmp {
		msg = "APPROVED"
	} else {
		msg = "DENIED"
	}
	
	fmt.Print(msg)
}

func judge(n int) bool {
	if n % 2 == 1 || (n % 3 == 0 || n % 5 == 0) {
		return true
	} else {
		return false
	}
}
