package main

import "fmt"

var bin [9]bool

func main() {
	var bingo [9]int
	var n int
	b := make(map[int]bool)
	fmt.Scanf("%d %d %d\n %d %d %d\n %d %d %d \n%d", &bingo[0], &bingo[1], &bingo[2], &bingo[3], &bingo[4], &bingo[5], &bingo[6], &bingo[7], &bingo[8], &n)
	//fmt.Println(bingo)
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scanf("%d", &tmp)
		b[tmp] = true
	}
	for i, j := range bingo {
		if b[j] {
			bin[i] = true
		}
	}
	//fmt.Println(b)
	if h(1, 2, 3) || h(4, 5, 6) || h(7, 8, 9) || h(1, 4, 7) || h(2, 5, 8) || h(3, 6, 9) || h(1, 5, 9) || h(3, 5, 7) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
func h(a, b, c int) bool {
	if bin[a-1] && bin[b-1] && bin[c-1] {
		return true
	}
	return false
}
