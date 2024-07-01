package main
 
import (
  "fmt"
  "regexp"
  "os"
)
 
func main() {
    
    if(len(os.Args) != 3) {
        panic("argument error:")
    }
    var firstWord = os.Args[1]
    var secondWord = os.Args[2]
    
    var firstWordLength = len(firstWord)
    var secondWordLength = len(secondWord)
 
    var regexpSmallAlphabet = regexp.MustCompile(`^[a-z]*$`)
 
//    fmt.Println("firstWord:", firstWordLength, "&", regexpSmallAlphabet.Match([]byte(firstWord)))
//    fmt.Println("secondWord:", secondWordLength, "&", regexpSmallAlphabet.Match([]byte(secondWord)))
 
    // length 1 - 100 and small a - z
    if(firstWordLength < 1 || 100 < firstWordLength) {
        panic("allow length 1 to 100")
    }
    if(secondWordLength < 1 || 100 < secondWordLength) {
        panic("allow length 1 to 100")
    }
    if(!regexpSmallAlphabet.Match([]byte(firstWord)) || !regexpSmallAlphabet.Match([]byte(secondWord))) {
        panic("allow char a to z")
    }
 
    fmt.Sprintf("%s%s", firstWord, secondWord)
}