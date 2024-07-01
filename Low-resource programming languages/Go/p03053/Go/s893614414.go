package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var h, w int
	fmt.Scanf("%d %d", &h, &w)
	scanner := bufio.NewScanner(os.Stdin)
	A := make([][]byte, h)

	for i := 0; i < h; i++ {
		A[i] = make([]byte, w)
		scanner.Scan()
		s := scanner.Bytes()
		for j, v := range s {
			A[i][j] = v
		}
	}

	count := 0
	for {
		found := false
		for i := 0; i < h; i++ {
			for j := 0; j < w; j++ {
				if A[i][j] == '.' {
					found = true
					if i - 1 >= 0 && A[i-1][j] == '#' {
						A[i][j] = 'a'
					} else if i + 1 < h && A[i+1][j] == '#'{
						A[i][j] = 'a'
					} else if j - 1 >= 0 && A[i][j-1] == '#'{
						A[i][j] = 'a'
					} else if j + 1 < w && A[i][j+1] == '#' {
						A[i][j] = 'a'
					}
				}
			}
		}
		if !found {
			break
		}
		for i := 0; i < h; i++ {
			for j := 0; j < w; j++ {
				if A[i][j] == 'a' {
					A[i][j] = '#'
				}
			}
		}
		count++

	}
	fmt.Println(count)
}
/*

 ######
 ######
 ######
 ######
 #####.
 ######


 */