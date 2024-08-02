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

String longestPalindrome(String s) {
  String longest = "";
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) {
      String sub = s.substring(i, j);
      if (isPalindrome(sub) && sub.length > longest.length) {
        longest = sub;
      }
    }
  }
  return longest;
}