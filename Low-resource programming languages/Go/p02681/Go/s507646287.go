package _510A

import ("fmt"
		"strings")

func main()  {

	var S, T string

	_, _ = fmt.Scan(&S, &T)

	S = strings.ToLower(S)
	T = strings.ToLower(T)

	s := T
	fmt.Println(string((s[:(len(s)-1)])))

	if s == S{
		fmt.Println("yes")
	}else {
		fmt.Println("no")
	}
}