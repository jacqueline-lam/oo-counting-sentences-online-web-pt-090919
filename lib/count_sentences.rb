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
    # binding.pry
    self.split(/[!.?]/).count
  end
end

# describe "#count_sentences" do

#     it  "returns the number of sentences in a string" do
#       expect("one. two. three?".count_sentences).to eq(3)
#     end

#     it "returns zero if there are no sentences in a string" do
#       expect("".count_sentences).to eq(0)
#     end

#     it "returns the number of sentences in a complex string" do
#       complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
#       expect(complex_string.count_sentences).to eq(4)
#     end
#   end