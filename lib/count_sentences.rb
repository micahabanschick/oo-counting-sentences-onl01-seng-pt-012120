require 'pry'

class String

  def sentence?
    self[self.length - 1] == "." ? true : false   
  end

  def question?
    self[self.length - 1] == "?" ? true : false
  end

  def exclamation?
    self[self.length - 1] == "!" ? true : false
  end

  def count_sentences
    arr1 = self.split(". ")
    arr2 = self.split("? ")
    arr3 = self.split("! ")
    arr = arr1 + arr2 + arr3
    arr.length
  end
end