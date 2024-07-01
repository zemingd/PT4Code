package main
 
import "fmt"
 
func CheckString(s string) (string) {
	if s[2] == s[3] && s[4] == s[5] {
		return "Yes"
	} else {
		return "No"
	}

}
 
func main()  {
	var s string
	fmt.Scan(&s)
	fmt.Println(CheckString(s))
}
