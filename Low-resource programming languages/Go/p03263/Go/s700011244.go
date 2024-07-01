package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)
	sc.Split(bufio.ScanWords)
	h, _ := strconv.Atoi(stringLineScan())
	w, _ := strconv.Atoi(stringLineScan())
	a := make([][]int, h)
	for i := 0; i < h; i++ {
		b := make([]int, w)
		for j := 0; j < w; j++ {
			b[j], _ = strconv.Atoi(stringLineScan())
			b[j] %= 2
		}
		a[i] = b
	}
	ans := make([]string, 0)
	i, j := 0, 0
	for {
		i2 := i % 2
		if i2 == 0 && j == w-1 && i == h-1 {
			break
		} else if i2 == 0 && j == w-1 {
			if a[i][j] == 1 {
				a[i][j] = 0
				a[i+1][j] = (a[i+1][j] + 1) % 2
				ans = append(ans, (fmt.Sprint(i+1, j+1, i+2, j+1)))
			}
			i++
		} else if i2 == 0 {
			if a[i][j] == 1 {
				a[i][j] = 0
				a[i][j+1] = (a[i][j+1] + 1) % 2
				ans = append(ans, (fmt.Sprint(i+1, j+1, i+1, j+2)))
			}
			j++
		} else if i2 == 1 && j == 0 && i == h-1 {
			break
		} else if i2 == 1 && j == 0 {
			if a[i][j] == 1 {
				a[i][j] = 0
				a[i+1][j] = (a[i+1][j] + 1) % 2
				ans = append(ans, (fmt.Sprint(i+1, j+1, i+2, j+1)))
			}
			i++
		} else if i2 == 1 {
			if a[i][j] == 1 {
				a[i][j] = 0
				a[i][j-1] = (a[i][j-1] + 1) % 2
				ans = append(ans, (fmt.Sprint(i+1, j+1, i+1, j)))
			}
			j--
		}
	}
	fmt.Println(len(ans))
	for _, s := range ans {
		fmt.Println(s)
	}
}
