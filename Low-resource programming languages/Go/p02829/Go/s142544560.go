package main
import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a)
	fmt.Scan(&b)

	var t1, t2, t3 bool = false, false, false
	if a == 1 || b == 1 {
		t1 = true
	}
	if a == 2 || b == 2 {
		t2 = true
	}

	if t1 == false {
		fmt.Println(1)
	} else if t2 == false {
		fmt.Println(2)
	} else if t3 == false {
		fmt.Println(3)
	}
}