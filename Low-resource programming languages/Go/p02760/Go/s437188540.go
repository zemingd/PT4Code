package main

import (
	"fmt"
)

func main() {
  
	Bingo()

}

//Bingo 3*3
func Bingo() {

	bingo := make([][]int, 3)

	for x := range bingo {

		bingo[x] = make([]int, 3)
	}

	allkumi := make([][]int, 8)

	for x := range allkumi {
		allkumi[x] = make([]int, 3)
	}

	var N int

	for i := 0; i < 3; i++ {

		for j := 0; j < 3; j++ {

			fmt.Scan(&bingo[i][j])
		}
	}

	fmt.Scan(&N)

	numbers := make([]int, N)

	for n := 0; n < N; n++ {

		fmt.Scan(&numbers[n])
	}

	//横３つ
	for i := 0; i < 3; i++ {

		for j := 0; j < 3; j++ {

			allkumi[i][j] = bingo[i][j]

		}
	}

	//縦３つ
	for i := 0; i < 3; i++ {

		for j := 0; j < 3; j++ {

			allkumi[i+3][j] = bingo[j][i]

		}
	}

	//斜め二つ

	allkumi[6][0] = bingo[0][0]
	allkumi[6][1] = bingo[1][1]
	allkumi[6][2] = bingo[2][2]

	allkumi[7][0] = bingo[0][2]
	allkumi[7][1] = bingo[1][1]
	allkumi[7][2] = bingo[2][0]

	count := 0

	for i := 0; i < 8; i++ {

		count=0

		for j := 0; j < 3; j++ {

			for n := 0; n < N; n++ {

				if allkumi[i][j] == numbers[n] {

					count++
					break
				}
				

			}

		}

		if count == 3 {

			fmt.Println("Yes")

			return
		}

	}

	fmt.Println("No")

}
