package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	tel := make([]int, 0)
	judge := make([]int, n)

	tel = append(tel, 1)
	judge[0] = 1
	var loopNum int
	for i := 0; i < n; i++ {
		if judge[a[tel[i]-1]-1] == 0 {
			tel = append(tel, a[tel[i]-1])
			judge[a[tel[i]-1]-1] = 1
		} else {
			loopNum = len(tel)
			for j := 0; i < len(tel); j++ {
				if a[tel[i]-1] == tel[j] {
					loopNum -= j
					break
				}
			}
			break
		}
	}

	iniNum := len(tel) - loopNum
	//fmt.Println(tel)
	//fmt.Println(loopNum)
	fmt.Println(tel[iniNum+(k-iniNum)%loopNum])

}
