package main

import (
	"fmt"
)

func main(){
	var h, w, aij, n int
	fmt.Scan(&h, &w)
	matrix := make([][]int, h)
	ans_list := make([][4]int, 0, 500*500)
	for i:=0; i<h; i++{
		matrix[i] = make([]int, w)
	}
	for i:=0; i<h; i++{
		for j:=0; j<w; j++{
			fmt.Scan(&aij)
			matrix[i][j] += aij
			if i == h-1 && j == w-1{
				break
			} else if i != h-1 && matrix[i][j] % 2 == 1{
				n++
				ans_list = append(ans_list, [4]int{i, j, i+1, j})
				// matrix[i][j] -= j
				// matrix[i+1][j] += 1
			} else if i == h-1 && matrix[i][j] % 2 == 1{
				n++
				ans_list = append(ans_list, [4]int{i, j, i, j+1})
				// matrix[i][j] -= 1
				// matrix[i][j+1] += 1
			}
		}
	}
	// fmt.Print(matrix)
	fmt.Println(n)
	for _, list := range(ans_list){
		fmt.Printf("%d %d %d %d\n", list[0], list[1], list[2], list[3])
	}
}