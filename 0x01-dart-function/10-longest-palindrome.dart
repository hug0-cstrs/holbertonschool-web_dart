String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }
  String longest = "";
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j <= s.length; j++) {
      String sub = s.substring(i, j);
      if (isPalindrome(sub) && sub.length > longest.length) {
        longest = sub;
      }
    }
  }
  return longest.length == 0 ? "none" : longest;
}

bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  String reversed = "";
  for (int i = s.length - 1; i >= 0; i--) {
    reversed += s[i];
  }
  return reversed == s;
}