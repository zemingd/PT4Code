func main() {
	var A, B int
	fmt.Scanf("%v %v", &A, &B)

	sum := A + B
	minus := A - B
	multi := A * B

	if sum >= minus && sum >= multi {
		fmt.Println(sum)
	} else if minus >= sum && minus >= multi {
		fmt.Println(minus)
	} else if multi >= sum && multi >= minus {
		fmt.Println(multi)
	}

}