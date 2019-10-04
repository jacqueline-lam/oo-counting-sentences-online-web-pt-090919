require 'pry'

class String

  def sentence?
    # true if string ends in period
    # else false 
    self.end_with?(".")
  end

  def question?
    #self to refer to string on which it is being called
    # return true if str ends with "?"
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    #goal: return # of sentences 
    delimiters = [". ", "? ", "! "]
    self.split(Regexp.union(delimiters)).count
  end
end
