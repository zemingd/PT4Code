package main

import "fmt"

func readAction(s string) string {
	var str string
	for _, runeValue := range s {
		switch runeValue {
		case '0':
			str += "0"
		case '1':
			str += "1"
		case 'B':
			if str != "" {
				sc := []rune(str)
				str = string(sc[:(len(sc) - 1)])
			}
		}
	}
	return str
}

func main() {
	var s string
	fmt.Scan(&s)
	str := readAction(s)
	fmt.Println(str)
}
