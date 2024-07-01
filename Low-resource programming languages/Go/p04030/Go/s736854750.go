package main

import "fmt"

func main() {
	var s string
	fmt.Println(textEdit(s))
}

func textEdit(s string) string {
	/*入力を受け取る*/
	fmt.Scan(&s)

	/*入力をstring→文字の配列*/
	sRune := []rune(s)
	size := len(s)

	/*空の文字列*/
	s2 := make([]string, size+1)
	j := 0

	for i := 0; i < size; i++ {
		switch text := string(sRune[i]); text {
		case "1":
			s2[j] = text
			j++

		case "0":
			s2[j] = text
			j++

		case "B":
			if j > 0 {
				j--
			}

		}
	}

	var s3 string

	for i := 0; i < j; i++ {
		s3 += s2[i]
	}

	return s3

}
