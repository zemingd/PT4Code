package main

func main() {
	in := ""
	fmt.Scanf("%s", &in)
	i := []byte(in)
	if 'a' >= i && i >= 'z' {
		fmt.Println("a")
	} else {
		fmt.Println("A")
	}
}
