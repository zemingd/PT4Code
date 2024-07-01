package main

import "fmt"

func main(){
	var A [3][3] int
	var N int
	var a [3][3] bool

	for i := 0 ; i < 3 ; i++ {
		for j := 0 ; j < 3 ; j++ {
			fmt.Scan(&A[i][j])
		}
	}
	fmt.Scan(&N)

	b := make([]int, N)
	
	for i := 0 ; i < N ; i++ {
		fmt.Scan(&b[i])
	}

	for k := 0 ; k < N ; k++ {
		for i := 0 ; i < 3 ; i++ {
			for j := 0 ; j < 3 ; j++{
				if A[i][j] == b[k] {
					a[i][j] = true
				}
			}
		}
	}
	var tate, yoko [3] int
	var naname  int
	for i := 0 ; i < 3 ; i++ {
		if a[i][0] == true {tate[0]++}
		if a[i][1] == true {tate[1]++}
		if a[i][2] == true {tate[2]++}
		if a[0][i] == true {yoko[0]++}
		if a[1][i] == true {yoko[1]++}
		if a[2][i] == true {yoko[2]++}
	}
	if (a[0][0] == true && a[1][1] == true && a[2][2] == true) || (a[0][2] == true && a[1][1] == true && a[2][0] == true) {
		naname++
	}

	if tate[0] == 3 || tate[1] == 3 || tate[2] == 3 || yoko[0] == 3 || yoko[1] == 3 || yoko[2] == 3 || naname > 0 {
		fmt.Println("Yes")
	}else {
		fmt.Println("No")
	}
	//fmt.Println(a)
	// for i := 0 ; i < 3 ; i++ {
	// 	for j := 0 ; j < 3 ; j++ {
	// 		fmt.Print(a[i][j])
	// 	}
	// 	fmt.Println()
	// }
	//fmt.Println(tate, yoko)
}