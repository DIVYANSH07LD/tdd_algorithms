class Palindrome{
  bool isPalindrome(String input){
    final cleaned = input.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    return cleaned == cleaned.split('').reversed.join('');
  }
}