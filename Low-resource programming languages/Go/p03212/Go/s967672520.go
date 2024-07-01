package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func condAB(c bool, a, b int) int {
	if c {
		return a
	}
	return b
}

func main() {
	sc.Split(bufio.ScanWords)

	N := getInt()

	n := N
	nbits := 0
	d := make([]int, 0)
	for n > 0 {
		d = append([]int{n % 10}, d...)
		n /= 10
		nbits++
	}

	//  [digit][smaller][cond1][cond2][cond3]
	//  cond1 ... 3で含む
	//  cond2 ... 5を含む
	//  cond3 ... 7を含む
	//  cond4 ... 375以外を含む
	//  cond5 ... 0以外
	var dp [15][2][2][2][2][2][2]int

	dp[0][0][0][0][0][0][0] = 1
	for i := 0; i < nbits; i++ {
		for m := 0; m < 2; m++ {
			for j := 0; j < 2; j++ {
				for k := 0; k < 2; k++ {
					for l := 0; l < 2; l++ {
						for x := 0; x < 2; x++ {
							for y := 0; y < 2; y++ {
								for a := 0; a <= condAB(m != 0, 9, d[i]); a++ {
									mm := m
									if a < d[i] {
										mm = 1
									}
									// cond1
									jj := j
									if a == 3 {
										jj = 1
									}
									kk := k
									if a == 5 {
										kk = 1
									}
									ll := l
									if a == 7 {
										ll = 1
									}
									xx := x
									if y == 1 {
										if a != 3 && a != 5 && a != 7 {
											xx = 1
										}
									} else {
										if a != 0 && a != 3 && a != 5 && a != 7 {
											xx = 1
										}
									}
									yy := y
									if a != 0 {
										yy = 1
									}
									dp[i+1][mm][jj][kk][ll][xx][yy] += dp[i][m][j][k][l][x][y]
								}
							}
						}
					}
				}
			}
		}
	}

	ans := 0
	for m := 0; m < 2; m++ {
		for j := 0; j < 2; j++ {
			for k := 0; k < 2; k++ {
				for l := 0; l < 2; l++ {
					for x := 0; x < 2; x++ {
						for y := 0; y < 2; y++ {
							if m == 1 && j == 1 && k == 1 && l == 1 && x == 0 {
								ans += dp[nbits][m][j][k][l][x][y]
							}
						}
					}
				}
			}
		}
	}
	out(ans)
}
