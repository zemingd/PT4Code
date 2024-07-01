package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	anums := make([]int, 0)
	bnums := make([]int, 0)

	for i := 1; i <= a; i++ {
		if a%i == 0 {
			anums = append(anums, i)
		}
	}
	for i := 1; i <= b; i++ {
		if b%i == 0 {
			bnums = append(bnums, i)
		}
	}

	koyaku := make([]int, 0)
	for i := 0; i < len(anums); i++ {
		for j := 0; j < len(bnums); j++ {
			if anums[i] == bnums[j] {
				koyaku = append(koyaku, anums[i])
			}
		}
	}

	res := make([]int, 0)
	for i := 0; i < len(koyaku); i++ {
		judge := true
		for j := 0; ; j++ {
			if len(res) == 0 || j >= len(res) {
				break
			}
			if res[j] == 1 {
				continue
			}
			if koyaku[i]%res[j] == 0 {
				judge = false
				break
			}
		}
		if judge {
			res = append(res, koyaku[i])
		}
	}

	fmt.Println(len(res))
}
