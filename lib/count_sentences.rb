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
    self.split(/[.?!]/).delete_if{|elem| elem.match(/w+/) == false}.length 
    binding.pry
  end
end