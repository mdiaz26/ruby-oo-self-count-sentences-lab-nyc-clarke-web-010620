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
    self.sub! "?", "."
    self.sub! "!", "."
    self.split(".").count
    # binding.pry
    # two = one.map.split("?")
    # three = two.map.split("!")
    # four = three.map.delete(" ")
    # four.count
  end
end