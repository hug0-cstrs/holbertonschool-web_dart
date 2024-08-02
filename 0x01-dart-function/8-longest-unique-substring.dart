String longestUniqueSubstring(String str){
  String longest = "";
  String current = "";
  for (int i = 0; i < str.length; i++) {
    if (current.contains(str[i])) {
      if (current.length > longest.length) {
        longest = current;
      }
      current = current.substring(current.indexOf(str[i]) + 1);
    }
    current += str[i];
  }
  return current.length > longest.length ? current : longest;
}