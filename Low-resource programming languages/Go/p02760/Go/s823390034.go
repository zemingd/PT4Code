package main

import "fmt"

func main() {
	var a [3][3]int
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			fmt.Scan(&a[i][j])
		}
	}
	var n int
	fmt.Scan(&n)
	var b []int
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		b = append(b, tmp)
	}

	// 縦
	for j := 0; j < 3; j++ {
		tmp := true
		for i := 0; i < 3; i++ {
			if !tmp {
				break
			}
			tmp = search(a[i][j], b)
		}
		if tmp {
			fmt.Print("Yes")
			return
		}
	}
	// 横
	for i := 0; i < 3; i++ {
		tmp := true
		for j := 0; j < 3; j++ {
			if !tmp {
				break
			}
			tmp = search(a[i][j], b)
		}
		if tmp {
			fmt.Print("Yes")
			return
		}
	}
	// 斜め
	tmp := true
	for i := 0; i < 3; i++ {
		if !tmp {
			break
		}
		tmp = search(a[i][i], b)
	}
	if tmp {
		fmt.Print("Yes")
	}
	tmp = true
	for i := 0; i < 3; i++ {
		if !tmp {
			break
		}
		tmp = search(a[i][2-i], b)
	}
	if tmp {
		fmt.Print("Yes")
	}

	fmt.Print("No")
}

func search(n int, b []int) bool {
	for _, bi := range b {
		if n == bi {
			return true
		}
	}
	return false
}
