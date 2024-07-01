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
	var bs []int
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		bs = append(bs, tmp)
	}

	// 縦
	for j := 0; j < 3; j++ {
		tmp := true
		for i := 0; i < 3; i++ {
			if !tmp {
				break
			}
			tmp = search(a[i][j], bs)
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
			tmp = search(a[i][j], bs)
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
		tmp = search(a[i][i], bs)
	}
	if tmp {
		fmt.Print("Yes")
		return
	}
	tmp = true
	for i := 0; i < 3; i++ {
		if !tmp {
			break
		}
		tmp = search(a[i][2-i], bs)
	}
	if tmp {
		fmt.Print("Yes")
		return
	}

	fmt.Print("No")
}

func search(n int, bs []int) bool {
	for _, b := range bs {
		if n == b {
			return true
		}
	}
	return false
}
