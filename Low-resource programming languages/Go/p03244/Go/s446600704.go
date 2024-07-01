package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	scanner.Scan()
	var n int
	fmt.Sscanf(scanner.Text(), "%d", &n)

	as := make([]int, n/2)
	bs := make([]int, n/2)
	for i := 0; i < n; i++ {
		scanner.Scan()
		if i%2 == 0 {
			fmt.Sscanf(scanner.Text(), "%d", &as[i/2])
		} else {
			fmt.Sscanf(scanner.Text(), "%d", &bs[i/2])
		}
	}

	mpA := make(map[int]int)
	for _, val := range as {
		mpA[val]++
	}
	mpB := make(map[int]int)
	for _, val := range bs {
		mpB[val]++
	}

	// find 1st/2dn mode
	fstA := -1
	fstCntA, sndCntA := 0, 0
	for num, count := range mpA {
		if count > fstCntA {
			fstA = num
			fstCntA, sndCntA = count, fstCntA
		} else if count > sndCntA {
			sndCntA = count
		}
	}

	fstB := -1
	fstCntB, sndCntB := 0, 0
	for num, count := range mpB {
		if count > fstCntB {
			fstB = num
			fstCntB, sndCntB = count, fstCntB
		} else if count > sndCntB {
			sndCntB = count
		}
	}

	var ans int
	if fstA != fstB {
		ans = (n/2 - fstCntA) + (n/2 - fstCntB)
	} else {
		if fstCntA > fstCntB {
			ans = (n/2 - fstCntA) + (n/2 - sndCntB)
		} else if fstCntA < fstCntB {
			ans = (n/2 - sndCntA) + (n/2 - fstCntB)
		} else {
			// fstCntA == fstCntB
			if sndCntA > sndCntB {
				ans = (n/2 - sndCntA) + (n/2 - fstCntB)
			} else if sndCntA < sndCntB {
				ans = (n/2 - fstCntA) + (n/2 - sndCntB)
			} else {
				// sndCntA == sndCntB
				ans = (n/2 - sndCntA) + (n/2 - fstCntB)
			}
		}
	}
	fmt.Println(ans)
}
