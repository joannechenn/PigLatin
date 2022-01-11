public void setup() {
  String[] lines = {"beast", "dough", "happy", "question", "star", "three", "eagle", "try"};
  //String[] lines = loadStrings("words.txt");
  System.out.println("There are " + lines.length + " lines.");
  for (int i = 0 ; i < lines.length; i++) {
    System.out.println(pigLatin(lines[i]));
  }
}


//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
public int findFirstVowel(String sWord) {
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.substring(0 + i, 1 + i).equals("a") || sWord.substring(0 + i, 1 + i).equals("e") || sWord.substring(0 + i, 1 + i).equals("o") || sWord.substring(0 + i, 1 + i).equals("i") || sWord.substring(0 + i, 1 + i).equals("u")){
      return i;
    }
  }
  return -1;
}


//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
public String pigLatin(String sWord) {
  if(findFirstVowel(sWord) == -1) {
    return sWord + "ay";
  }
  
  else if(findFirstVowel(sWord) == 0){
    return sWord + "way";
  }
  
  else if(sWord.substring(0, 2).equals("qu")){
    return sWord.substring(2) + sWord.substring(0, 2) + "ay";
  }
  
  else if(findFirstVowel(sWord) != 0){
    return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
  }
  
  else {
    return "ERROR!";
  }
}
