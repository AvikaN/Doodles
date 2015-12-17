// if l or r 
// replace it with the rule
// otherwise append the character
// strip the final string of all l and r? 
// maybe not necessary 
class L_System{
  
  String sentence; 
  Rule[] ruleset; 
  
  L_System(String axiom, Rule[] r){
    sentence = axiom; 
    // set reference
    ruleset = r; 
  }
  
  void generate(){
    
    // create a new buffer
    StringBuffer nextGeneration = new StringBuffer(); 
    
    for(int i = 0; i<sentence.length(); i++){
      
      // get character
      char c = sentence.charAt(i); 
      String replace = ""+c; 
      // check every rule 
      for(int j = 0; j<ruleset.length; j++){
        // a replacement has been found 
        if(c == ruleset[j].getC()){
          
          replace = ruleset[j].getRule(); 
          break; 
        } 
        
      }
      // appendreplacement 
      // whether the character or the new rule
     nextGeneration.append(replace);

    }
    sentence = nextGeneration.toString(); 
  }

  String getSentence(){
    return sentence; 
  }
  
  
  
}


