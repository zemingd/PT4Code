package main

import "fmt"

func main() {
	a := [][]int{{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}
	appear := [][]bool{{false, false, false}, {false, false, false, false}, {false, false, false}}
	result := "No"

	for i:=0; i<len(a); i++{
		for j:=0; j<len(a[i]); j++{
			fmt.Scan(&a[i][j])
		}
	}
	var n int
	fmt.Scan(&n)
	b := make([]int, n)
	for i:=0; i<n; i++{
		fmt.Scan(&b[i])
	}

	for i:=0; i<3; i++{
		for j:=0; j<3; j++{
			for k:=0; k<n; k++{
				if a[i][j] == b[k]{
					appear[i][j] = true
				}
			}
		}
	}

	for i:=0; i<3; i++{
		if appear[0][i] && appear[1][i] && appear[2][i]{
			result = "Yes"
		}
	}

	for i:=0; i<3; i++{
		if appear[i][0] && appear[i][1] && appear[i][2]{
			result = "Yes"
		}
	}

	if appear[0][0] && appear[1][1] && appear[2][2]{
		result = "Yes"
	}

	if appear[0][2] && appear[1][1] && appear[2][0]{
		result = "Yes"
	}

	fmt.Println(result)

}