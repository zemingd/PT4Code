package main
import "fmt"

func main() {
	var N, K int
	var R, S, P int
	var T string

	fmt.Scan(&N, &K)
	fmt.Scan(&R, &S, &P)
	fmt.Scan(&T)

	var point int
	pointGet := make(map[rune]int,2)
	pointGet['r'] = P
	pointGet['p'] = S
	pointGet['s'] = R


	winFlg := make(map[int]bool, len(T))
	
	for num, r := range T[:N]{
		if num < K{
			point += pointGet[r]
			winFlg[num] = true
		} else {
			//k回前同じ手でない
			//k回前負けている
			if T[num] != T[num - K] || winFlg[num - K] == false {
				point += pointGet[r]
				winFlg[num] = true
			}
		}
		
	}
	fmt.Println(point)
}

