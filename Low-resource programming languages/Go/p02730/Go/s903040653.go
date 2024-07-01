package main

import (
	"bufio"
	"fmt"
	"os"
	"reflect"
	"strings"
)

// 元の文字列と逆順にした文字列、そして回文かどうかを真偽値で返す
func GetPalindrome(slice []string) bool {
	fmt.Println(slice)
	sre := make([]string, 0)

	for i := len(slice) - 1; i >= 0; i-- {
		sre = append(sre, slice[i])
	}
	if reflect.DeepEqual(slice, sre) {
		return true
	}
	return false
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)

	scanner.Scan()

	scan := scanner.Text()

	slice := strings.Split(scan, "")

	if len(slice) < 7 {
		fmt.Println("No")
		os.Exit(0)
	}

	flag := GetPalindrome(slice)

	if flag == false {
		fmt.Println("No")
		os.Exit(0)
	}

	flag = GetPalindrome(slice[:(len(slice)-1)/2])

	if flag == false {
		fmt.Println("No")
		os.Exit(0)
	}

	flag = GetPalindrome(slice[((len(slice)+3)/2)-1:])

	if flag == false {
		fmt.Println("No")
		os.Exit(0)
	}

	fmt.Println("Yes")

}
