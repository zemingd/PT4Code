func categorize(baseType string) string {
	switch baseType {
	case "A":
		return "T"
	case "T":
		return "A"
	case "C":
		return "G"
	case "G":
		return "C"
	default:
		return ""
	}
}