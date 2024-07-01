package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}


func main() {
	sc.Split(bufio.ScanWords)
	h := scanInt()
	w := scanInt()

	s := make([]string,h)
	for i := 0; i < h; i++ {
		s[i] = scanText()
	}

	lco := make([][]int, h)
	rco := make([][]int, h)
	uco := make([][]int, h)
	dco := make([][]int, h)
	for i := 0; i < h; i++ {
		lco[i] = append(lco[i],make([]int, w)...)
		rco[i] = append(rco[i],make([]int, w)...)
		uco[i] = append(uco[i],make([]int, w)...)
		dco[i] = append(dco[i],make([]int, w)...)
	}

	for i := 0; i < h; i++ {
		co := 0
		for j := 0; j < w; j++ {
			co++
			if string(s[i][j]) == "#" {
				co = 0
			}
			lco[i][j] = co
		}
	}

	for i := 0; i < h; i++ {
		co := 0
		for j := 0; j < w; j++ {
			co++
			if string(s[i][w-j-1]) == "#" {
				co = 0
			}
			rco[i][w-j-1] = co
		}
	}

	for i := 0; i < w; i++ {
		co := 0
		for j := 0; j < h; j++ {
			co++
			if string(s[j][i]) == "#" {
				co = 0
			}
			uco[j][i] = co
		}
	}

	for i := 0; i < w; i++ {
		co := 0
		for j := 0; j < h; j++ {
			co++
			if string(s[h-j-1][i]) == "#" {
				co = 0
			}
			dco[h-j-1][i] = co
		}
	}

	ans := 0
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			light := lco[i][j]+rco[i][j]+uco[i][j]+dco[i][j]-3
			if ans < light {
				ans = light
			}
		}
	}

	fmt.Println(ans)

}
