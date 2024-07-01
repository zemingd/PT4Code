package main

import (
	"fmt"
)

type xydata struct {
	x int
	y int
}

func main() {
	matrix := input()

	count := 0
	for {
		if true == check(matrix) {
			break
		}
		XYdata := getxydate(matrix)
		matrix = update(matrix, XYdata)
		count++
		/*
			if count > 20 {
				break
			}
		*/
	}
	fmt.Println(count)
}

func check(matrix [][]string) bool {
	for x := 0; x < len(matrix[0]); x++ {
		for y := 0; y < len(matrix); y++ {
			if matrix[x][y] == "." {
				return false
			}
		}
	}
	return true
}

func update(matrix [][]string, inXYdata []xydata) [][]string {
	for i := 0; i < len(inXYdata); i++ {
		if (inXYdata[i].x - 1) >= 0 {
			matrix[inXYdata[i].x-1][inXYdata[i].y] = "#"
		}
		if (inXYdata[i].x + 1) < len(matrix[0]) {
			matrix[inXYdata[i].x+1][inXYdata[i].y] = "#"
		}
		if (inXYdata[i].y - 1) >= 0 {
			matrix[inXYdata[i].x][inXYdata[i].y-1] = "#"
		}
		if (inXYdata[i].y + 1) < len(matrix) {
			matrix[inXYdata[i].x][inXYdata[i].y+1] = "#"
		}
	}
	/*
		for x := 0; x < len(matrix); x++ {
			for y := 0; y < len(matrix[0]); y++ {
				fmt.Printf("%s", matrix[x][y])
			}
			fmt.Println()
		}
	*/
	return matrix
}

func getxydate(matrix [][]string) []xydata {
	var resXYdata []xydata
	for x := 0; x < len(matrix[0]); x++ {
		for y := 0; y < len(matrix); y++ {
			if matrix[x][y] == "#" {
				resXYdata = append(resXYdata, xydata{x, y})
			}
		}
	}
	return resXYdata
}

func input() [][]string {
	var (
		i, j int
	)
	fmt.Scan(&i)
	fmt.Scan(&j)
	matrix := make([][]string, i)
	for k := 0; k < j; k++ {
		matrix[k] = make([]string, j)
	}

	var str string
	for x := 0; x < i; x++ {
		fmt.Scan(&str)
		r := []rune(str)
		for y := 0; y < j; y++ {
			matrix[x][y] = string(r[y])
		}
	}
	/*
		for x := 0; x < i; x++ {
			for y := 0; y < j; y++ {
				fmt.Printf("%s", matrix[x][y])
			}
			fmt.Println()
		}
	*/
	return matrix
}
