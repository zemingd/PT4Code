package main
 
import (
	"fmt"
)
 
func main() {
  	var card [3][3]int
	var bingo [3][3]bool
  	for i := 0; i < 3; i++ {
		fmt.Scanf("%d %d %d", &card[i][0], &card[i][1], &card[i][2])
  	}
  	var n int
  	fmt.Scan(&n)
  	for i := 0; i < n; i++ {
		var temp int
		fmt.Scanf("%d", &temp)
		for y := 0; y < 3; y++ {
			for x := 0; x < 3; x++ {
				if card[y][x] == temp {
					bingo[y][x] = true
				}
			}
		}
	}
	res := "No"
	for y := 0; y < 3; y++ {
		if bingo[y][0] && bingo[y][1] && bingo[y][2] {
			res = "Yes"
		}
		if bingo[0][y] && bingo[1][y] && bingo[2][y] {
			res = "Yes"
		}
	}
	if bingo[0][0] && bingo[1][1] && bingo[2][2] {
		res = "Yes"
	}
	if bingo[0][2] && bingo[1][1] && bingo[2][0] {
		res = "Yes"
	}
	fmt.Printf("%s", res)
}