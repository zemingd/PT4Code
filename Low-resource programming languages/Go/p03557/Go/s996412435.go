package main

import (
	"fmt"
	"sort"
)

func main()  {
	var N int
	var saidan [][]int
	fmt.Scan(&N)
	for i:=0;i<3;i++{
		var saidan_piece []int
		for j:=0;j<N;j++{
			var num int
			fmt.Scanf("%d",&num)
			saidan_piece = append(saidan_piece,num)
		}
		sort.Slice(saidan_piece, func(i, j int) bool {return saidan_piece[i]  < saidan_piece[j]})
		saidan = append(saidan,saidan_piece)
	}
	fmt.Println(saidan)
	count :=0
	for i:=0;i<N;i++{
		for j:=0;j<N;j++{
			for k:=0;k<N;k++{
				if saidan[0][i] < saidan[1][j] && saidan[1][j] < saidan[2][k]{
					count++
				}
			}
		}
	}
	fmt.Println(count)
}
