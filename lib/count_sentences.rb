require 'pry'

class String

  def sentence?
    self.end_with?(".") 

  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    split_array = self.split(/[!.?]+/)
    # split_array = self.split(/[!.?]/)
    # binding.pry
    # removeEmpty = split_array.reject { |empty_string| empty_string.empty?}
    # # binding.pry
    # removeEmpty.count
    split_array.count
  end
end

test = String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...")

binding.pry