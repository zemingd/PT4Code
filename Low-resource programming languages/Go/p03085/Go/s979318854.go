package main
 
import (
	"fmt"
	"strings"
)
 
func BeginerC(src string, from, to int) (int, error) {
	return strings.Count(src[from-1:to], "AC"), nil
}
 
func main() {
	var (
		inputLength   int
		questionCount int
		input         string
	)
 
	fmt.Scan(&inputLength, &questionCount)
	fmt.Scan(&input)
 
	for i := 0; i < questionCount; i++ {
		var from, to int
 
		fmt.Scan(&from, &to)
 
		result, _ := BeginerC(input, from, to)
 
		fmt.Println(result)
	}
}