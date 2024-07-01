package main

import ("fmt")

func main() {
	var number int
	var text, text2 string

	fmt.Scan(&number, &text, &text2)

	var ans string
	for i := 0; i < number; i++ {
		ans += string(text[i])
		ans += string(text2[i])
	}

	fmt.Println(ans)
}
