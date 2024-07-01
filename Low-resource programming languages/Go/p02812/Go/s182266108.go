package main
 
import (
	"fmt"
	"regexp"
)
 
func main() {
	var wordCount int
    var abcTestStr string
	fmt.Scanf("%d", &wordCount)
	fmt.Scanf("%s", &abcTestStr)

	var sLength = len([]byte(abcTestStr))
	if(sLength < 3 || 50 < sLength) {
        panic("allow length 1 to 50")
    }
	if(sLength != wordCount) {
        panic("allow length wordCount")
    }
	upperCaseAtoZRep := regexp.MustCompile(`^[A-Z]*`)
	if(!upperCaseAtoZRep.MatchString(abcTestStr)) {
		panic("allow AtoZ only")
	}
    splitAtoZRep := regexp.MustCompile(`ABC`)
    result := splitAtoZRep.FindAllStringSubmatch(abcTestStr, -1)  
	fmt.Printf("%d", len(result))
}
