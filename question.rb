class Question

  def initialize
    @a = rand(1...20)
    @b = rand(1...20)
  end

  def ask
    "What does #{@a} plus #{@b} equal?"
  end

  def correct?(answer)
    answer.to_i == @a + @b
  end

end
