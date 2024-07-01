package main

import "fmt"

func main() {
	var S, T string
	fmt.Scan(&S, &T)

	var cnt int = len(T)
	var cnt_save int = len(T)

	for i := 0; i < len(S) - len(T); i++{
			for j := 0; j < len(T); j++{
				if S[i:i + 1 + j] == T[j:j + 1]{
					cnt--;
				}
			}
		if cnt_save > cnt{
			cnt_save = cnt;
		}
	}

	fmt.Println(cnt_save)

}