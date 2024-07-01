package main

import "fmt"

func main() {
	var x, y int
	fmt.Scan(&x, &y)

	bNum := y / 4
	if y%2 != 0 || bNum > x {
		fmt.Println("No")
		return
	}
	if bNum == 0 {
		fmt.Println("Yes")
		return
	}

	var aNum int
	if y%4 != 0 {
		aNum = 1
	}

	for bNum >= 0 {
		if aNum+bNum == x {
			fmt.Println("Yes")
			return
		}
		bNum--
		aNum += 2
	}
	fmt.Println("No")
}

