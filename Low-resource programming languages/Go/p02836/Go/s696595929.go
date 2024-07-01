package main

import "fmt"

func main() {
	var iStr string
	fmt.Scanf("%s", &iStr)

	var curForward, curBack, ans int
	iStrLen := len(iStr)

	curForward = (iStrLen - (iStrLen % 2)) / 2 - 1
	curBack = (iStrLen - (iStrLen % 2)) / 2
	if iStrLen % 2 == 1 {
		curBack++
	}

	for i:= curBack; i < iStrLen; i++ {
		if iStr[i] != iStr[curForward] {
			ans++
		}
		curForward--
	}

	fmt.Print(ans)
}
